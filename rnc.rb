#!/usr/bin/env ruby
#  rnc
#
#  Created by Paolo Bosetti on 2010-11-23.
#  Copyright (c) 2010 University of Trento. All rights reserved.
#

# SYSTEM LIBRARIES
require "rubygems"
require "flotr"

# LOCAL LIBRARIES
require "./lib/parser.rb"
require "./lib/machine.rb"
require "./lib/simpleipc"

# INITIALIZATIONS
puts "Starting RNC..."

# To launch the program, type 
# ruby rnc.rb part_program.g
# the g-code filename "part_program.g" goes into the ARGV array
raise "Need a path to a G-code file as argument" unless ARGV.length == 1

# This is needed to communicate with the machine tool viewer
to_viewer = SimpleIPC.new :port => 5000

# selection of block and axis to plot on chart
setup_axis = 2
setup_block = 3

# Ensure that console output is written in real time (not buffered)
STDOUT.sync = true

# Maximum accepted error: a G00 block ends when the positioning error
# is less than this value
MAX_ERROR = 0.01

# Numerical Control configuration
CFG = {
  :A        => 3000,
  :D        => 3000,
  :tq       => 0.01,
  :file_name => ARGV[0],
}

# Machine tool configuration
CFG_M = {
  :x => {
    :mass => 500, :force => 0, :max_f => 5_000_000, :res => 2_000,
    :p => 195_000, :i => 15, :d => 49_000
  },
  :y => {
    :mass => 350, :force => 0, :max_f => 2_000_000, :res => 2_000,
    :p => 300000, :i => 500, :d => 90000
  },
  :z => {
    :mass => 150, :force => 0, :max_f => 2_000_000, :res => 2_000,
    :p => 300000, :i => 0, :d => 0
  }
}

# Machine tool simulator
m = RNC::Machine.new(CFG_M)
m.go_to [0,0,0]        # Initialize set-point to origin
m.states = [
  {:x => 0, :v => 0},  # Initialize axes to origin at zero velocity
  {:x => 0, :v => 0},
  {:x => 0, :v => 0}
  ]

# Parser
parser = RNC::Parser.new(CFG)
last_block = parser.parse_file - 1

# Interpolator
interp = RNC::Interpolator.new(parser.blocks)

# Plots
plot = Flotr::Plot.new("PID Setup")
series = {
  :setpoint => Flotr::Data.new(:label => "Set point", :color => "green"),
  :value    => Flotr::Data.new(:label => "Value", :color => "blue"),
  :error    => Flotr::Data.new(:label => "Error", :color => "red")
}



# MAIN LOOP

# Setting this value to false stops the main loop
running = true 

# This is needed to catch CTRL-C keystroke to stop execution
%w[ABRT INT TERM].each do |s|
  Signal.trap(s) do
    running = false
  end
end

# Timing management
now = Time.now.to_f
t_s = now
last = now
# starting main loop
while running do
  sleep_thread = Thread.start { sleep CFG[:tq] } # parallel timing thread
  now = Time.now.to_f
  t_block = now - t_s  # time elapsed since beginning of current block
  dt = now - last      # actual time elapsed since last iteration
  last = now           # resets last to now

  # Check if current block is done
  case interp.block.type
  when :G00   # G00 ends when actual position reach the set-point within error
    next_block = true if m.error <= MAX_ERROR
  when :G01   # G01 ends when interp.block.dt has elapsed
    next_block = true if t_block >= interp.block.dt
  end

  if next_block or interp.block.length <= MAX_ERROR
    if interp.i >= last_block
      break # If this is the LAST block, then exit the main loop
    end
    # Load the next block
    interp.next
    # Reset times
    t_block = 0.0
    t_s = now
    next_block = false
  else
    # Call the interpolator and calculate the set-points (commands)
    # to be sent to the axes controllers  
    commands = interp.eval(t_block)
    
    # Send the commands to the axes controllers
    m.go_to commands

    # Calculate the machine tool position, making a 
    # forward integration of axes dynamics over a dt timestep
    states = m.step(dt)

    # Update viewer
    data = [states[0][:x], states[1][:x], states[2][:x]] + commands
    begin
      # this triggers an error if the viewer is not running
      # so we ar using a begin..rescue..end structure
      to_viewer.send(data) {|o| o * ","}
    rescue
      # do nothing if the viewer is not responding
    end
    
    # Prepare data for output and plotting
    data << m.error
    printf(":%3d: #{interp.block.type} [%8.3f %8.3f %8.3f] [%8.3f %8.3f %8.3f] %7.4f \n", interp.i, *data)

    if interp.i == setup_block
      series[:setpoint] << [t_block, commands[setup_axis]]
      series[:value] << [t_block, states[setup_axis][:x]]
      series[:error] << [t_block, commands[setup_axis] - states[setup_axis][:x]]
    end
  end
  sleep_thread.join
end

# Fill the plot with the series
series.each do |k, v|
  plot << v
end

# Generate the plot
plot.show

# All done
puts "End processing."


