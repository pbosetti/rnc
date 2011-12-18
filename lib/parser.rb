#!/usr/bin/env ruby 
# http://cl.ly/CNJF

module RNC
  # Module constants:
  AXES = {:X => 0, :Y => 1, :Z => 2 }
  COMMANDS = [:G00, :G01]
  
  # Class for dealing with cartesian coordinates
  class Point < Array
    
    def Point.[](x=nil, y=nil, z=nil)
      Point.new([x, y, z])
    end
    
    def [](index)
      super(index_remap(index))
    end
    
    def []=(index, value)
      super(index_remap(index),value)
    end
    
    def -(other)
      Math::sqrt(
        (self[0] - other[:X]) ** 2 + 
        (self[1] - other[:Y]) ** 2 + 
        (self[2] - other[:Z]) ** 2  
      )
    end
    
    def delta(other)
      raise ArgumentError, "I need a Point instance" unless other.kind_of? Point
      Point[
        self[0] - other[0], 
        self[1] - other[1], 
        self[2] - other[2]
        ] 
    end
    
    def modal!(other)
      [:X, :Y, :Z].each do  |i|        
          self[i] = other[i] unless self[i]
      end
    end
    
    def inspect
      "[#{self[:X] or '*'} #{self[:Y] or '*'} #{self[:Z] or '*'}]"
    end
    
    # Private methods are only accessible from within the class itself
    # i.e. they CANNOT be called as: obj.private_method(args)
    private
    def index_remap(index)
      case index
      when Numeric
        index = index.to_i
      when String
        index = AXES[index.upcase.to_sym]
      when Symbol
        index = AXES[index]
      else
        raise "I need an integer!"
      end
      return index
    end
  end #class Point
  
  # Class for converting a G-code single line (a block) to a
  # machine-readable representation (an instance of the Block class)
  class Block
    attr_reader :type, :feed, :target, :line
    attr_reader :start, :length, :delta
    attr_accessor :profile, :dt
    def initialize(line = "G00 X0 Y0 Z0 F1000")
      @target = Point[nil, nil, nil]
      @feed   = nil
      @type   = nil
      @profile = nil
      @dt      = 0.0
      self.line   = line
    end
    
    def line=(l)
      @line = l.upcase
      self.parse
    end
    
    def parse
      tokens = @line.split
      @type = tokens.shift.to_sym
      raise "Unavailable command #{@type}" unless COMMANDS.include? @type
      
      tokens.each do |t|
        case t
        when /^([XYZ])(.+)/
          @target[$1] = $2.to_f
        when /^F(.+)/
          @feed = $1.to_f
        else
          raise "Could not parse token #{t}"
        end
      end
    end
    
    def modal!(previous)
      @start  = previous.target
      @target.modal!(@start)
      @feed   = (@feed or previous.feed)
      @length = @target - @start
      @delta  = @target.delta(@start)
      return self
    end

    def inspect
      "[#{@type} #{@target.inspect} F:#{@feed}]"
    end
    
  end #class Block
  
  # Class for reading a whole G-code file and building an array of 
  # instances of the Block class, one for each line
  class Parser
    attr_reader :blocks, :file_name
    def initialize(cfg)
      @cfg = cfg
      @blocks = [Block.new("G00 X0 Y0 Z0 F1000")]
      @file_name = @cfg[:file_name]
      @profiler = Profiler.new(@cfg)
    end
    
    def parse_file
      parsed_blocks = 0
      File.foreach(@file_name) do |line|
        parsed_blocks += 1
        puts "parsing line #{parsed_blocks}: #{line}"
        b         = Block.new(line).modal!(@blocks.last)
        b.profile = @profiler.velocity_profile(b.feed, b.length)
        b.dt      = @profiler.dt
        @blocks << b
      end
      @blocks.shift
      return parsed_blocks
    end
    
  end #class Parser
  
  # Class for calculating the velocity profile for a given block
  class Profiler
    attr_reader :dt, :accel, :feed, :times
    def initialize(cfg)
      # @cfg is a hash as: {:A => nnn, :D => nnn, :tq => 0.001}
      @cfg = cfg
      @dt = 0.0
    end
    
    def velocity_profile(f_m, l)
      # pre-calculations:
      f_m = f_m.to_f
      l = l.to_f
      
      dt_1 = f_m / @cfg[:A]
      dt_2 = f_m / @cfg[:D]
      dt_m = l / f_m - ( dt_1 + dt_2) / 2.0
      
      if dt_m > 0 then # trapezoidal profile
        q = quantize(dt_1 + dt_m + dt_2, @cfg[:tq]) # ARRAY!
        dt_m += q[1]
        f_m = (2 * l) / (dt_1 + dt_2 + 2 * dt_m)
      else # triangular profile
        dt_1 = Math::sqrt(2*l / (@cfg[:A] + @cfg[:A]**2 / @cfg[:D]))
        dt_2 = dt_1 * @cfg[:A] / @cfg[:D]
        q = quantize(dt_1 + dt_2, @cfg[:tq]) # ARRAY!
        dt_m = 0.0
        dt_2 += q[1]
        f_m = 2 * l / (dt_1 + dt_2)
      end
      a = f_m / dt_1
      d = - (f_m / dt_2)
      
      @times = [dt_1, dt_m, dt_2]
      @feed  = f_m
      @accel = [a, d]
      @dt   = q[0]
      
      
      # lambda function:
      proc do |t|
        r = 0.0
        c = nil
        if t < dt_1
          c = "A"
          r =  a * t**2 / 2
        elsif t < dt_1 + dt_m
          c = "M"
          r = f_m * dt_1 / 2.0 + f_m * (t - dt_1)
        else
          c = "D"
          t_2 = dt_1 + dt_m
          r = f_m * dt_1 / 2.0 + f_m * (dt_m + t - t_2) + d / 2.0 * (t**2 + t_2**2) - d * t * t_2
        end
        r / l
      end
    end
    
    private
    def quantize(x, q)
      result = []
      if (x % q) == 0.0 then
        result = [x, 0.0]
      else
        result[0] = ((x / q).to_i + 1) * q
        result[1] = result[0] - x
      end
      return result
    end
    
  end #class Profiler
  
  class Interpolator
    attr_reader :blocks, :block, :i
    def initialize(blocks)
      @blocks = blocks
      @block  = nil
      self.select 0
    end
    
    def next
      self.select(@i + 1)
    end
    
    def select(i)
      @i = i
      @block = @blocks[i]
    end
    
    def eval(t)
      result = Point[]
      case @block.type
      when :G00
        result = @block.target
      when :G01
        lambda = @block.profile.call(t)
        result[:X] = @block.start[:X] + lambda * @block.delta[:X]
        result[:Y] = @block.start[:Y] + lambda * @block.delta[:Y]
        result[:Z] = @block.start[:Z] + lambda * @block.delta[:Z]
      else
        raise "Unimplemented command #{@block.type}"
      end
      return result
    end
    
  end
end #module RNC















