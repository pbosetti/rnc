#!/usr/bin/env ruby
#
# Created by Paolo Bosetti on 2008-04-17.
# Copyright (c) 2008 University of Trento. All rights 
# reserved.

require "lib/parser"
require "lib/machine"
require "lib/osc"
require 'rubygems'
require 'rosar'
include RNC

A = 400
D = 400
T_q = 0.01
STDOUT.sync = true
osc = OSC::SimpleClient.new('localhost', 60000)
r = ROSAR.instance
df = {:b=>[], :t=>[], :X=>[], :Y=>[], :Z=>[], :Xn=>[], :Yn=>[], :Zn=>[]}

# Macchina utensile
# cfg    = {
#   :x => {:mass => 500, :max_f => 500000, :res => 2000, 
#     :p => 240000, :i => 3000, :d => 36000},
#   :y => {:mass => 350, :max_f => 500000, :res => 2000, 
#     :p => 48000, :i => 3000, :d => 18000},
#   :z => {:mass => 150, :max_f => 500000, :res => 2000, 
#     :p => 48000, :i => 3000, :d => 18000}
# }
cfg    = {
  :x => {:mass => 500, :force => 0, :max_f => 500000, :res => 2000, 
    :p => 200000, :i => 1000, :d => 15000},
  :y => {:mass => 350, :force => 0, :max_f => 500000, :res => 2000, 
    :p => 150000, :i => 0, :d => 9000},
  :z => {:mass => 150, :force => 0, :max_f => 500000, :res => 2000, 
    :p => 100000, :i => 0, :d => 9000}
}
m      = Machine.new cfg
m.go_to [0,0,0]
m.states = [
	{:x => 0,    :v => 0},
	{:x => 0,    :v => 0},
	{:x => 0,    :v => 0}
]

# Parser
parser = Parser.new(
  :file => ARGV[0],
  :A => A,
  :D => D,
  :t_q => T_q)
  
last_block = parser.parse - 1

# Interpolatore
interp = Interpolator.new(parser.blocks)

running = true
now = Time.now.to_f
t_e = interp.block[:dt]
t_s = now
last = now
t_0 = now

# GESTIONE SEGNALI
%w[ABRT HUP INT TERM].each do |s|
  Signal.trap(s) { running = false }
end

while running do
  # Thread parallela di temporizzazione
  sleep_thread = Thread.start { sleep T_q }
  
  # Variabili di tempo
  now    = Time.now.to_f
  t_loop = now - t_s
  dt     = now - last
  last   = now
  
  # Verifica se è l'ultimo punto del blocco
	case interp.block[:type]
	when :G00
		next_block = true if m.error <= 0.01
	when :G01
		next_block = true if t_loop >= t_e
	end

  if next_block
    # Verifica se è l'ultimo blocco e in caso esce
    if interp.i >= last_block
      running = false
      next   # next salta il resto del ciclo
    end
    interp.next
    t_s = now
    t_e = interp.block[:dt]
    t_loop = 0.0
    next_block = false
  end
  
  # interpola la posizione
  commands = interp.eval(t_loop)
  
  # invia i comandi agli assi e ne legge la nuova posizione
  m.go_to [commands[:X],commands[:Y],commands[:Z]]
	states = m.step(dt)
	
	# aggiorna il 3D e stampa le posizioni
	data = [states[0][:x], states[1][:x], states[2][:x]] + commands
	osc.send(OSC::Message.new('/coord', "f"*6, *data))
  print "[%d/%d %8.3f] [%8.3f %8.3f %8.3f] [%8.3f %8.3f %8.3f]\r" %
    ([interp.i, last_block, m.error] + data)
  df[:b] << interp.i
  df[:t] << Time.now.to_f - t_0
  [:X, :Y, :Z].each {|a| df[a]<<commands[a]}
  [:Xn, :Yn, :Zn].each_with_index {|a,i| df[a]<<states[i][:x]}
  
  # attende la fine della thread di temporizzazione
  sleep_thread.join
end



puts "\nDONE!!!"
r.data_frame :df, df
r.attach :df
r.plot :x=>:t, :y=>:Xn, :typ=>"'b'", :cex=>0.66
r.lines :x=>:t, :y=>:X, :col=>"'red'"

