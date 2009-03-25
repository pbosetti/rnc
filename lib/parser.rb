#!/usr/bin/env ruby
#
# Created by Paolo Bosetti on 2008-04-17.
# Copyright (c) 2008 University of Trento. All rights 
# reserved.

module RNC
  AXES = {:X => 0, :Y => 1, :Z => 2}
  COMMANDS = [:G00, :G01]
  
  class Point < Array
    def Point.[](x=nil, y=nil, z=nil)
      Point.new([x, y, z])
    end
    
    def [](i)
      case i
      when Numeric
        i = i.to_i
      when Symbol
        i = AXES[i]
      when String
        i = AXES[i.to_sym]
      else
        raise ArgumentError
      end
      super(i)
    end
    
    def []=(i, v)
      case i
      when Numeric
        i = i.to_i
      when Symbol
        i = AXES[i]
      when String
        i = AXES[i.to_sym]
      else
        raise ArgumentError
      end
      super(i, v)
    end
    
    def -(other)
      Math::sqrt(
        (self[0] - other[0])**2 + 
        (self[1] - other[1])**2 +
        (self[2] - other[2])**2)
    end
    
    def delta(other)
      Point[ self[0] - other[0],
        self[1] - other[1],
        self[2] - other[2]]
    end
    
    def inspect
      "[#{self[:X] or '-'} #{self[:Y] or '-'} #{self[:Z] or '-'}]"
    end
    
    def modal(other)
      [:X, :Y, :Z].each do |axis|
        self[axis] = other[axis] unless self[axis]
      end
      self
    end
    
  end
  
  class Block
    attr_reader :line
    attr_reader :target, :feed, :type
        
    def initialize(l="G00 X0 Y0 Z0 F1000")
      @target = Point[nil, nil, nil]
      @feed   = nil
      @type   = ""
      self.line = l
    end
    
    def line=(line)
      @line = line.upcase
      self.parse
    end  
      
    def parse
      tokens = @line.split
      @type = tokens.shift.to_sym
      raise "Command #{@type} unavailable" unless COMMANDS.include? @type
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
    
    def inspect
      "[#{@type} #{@target.inspect} F #{@feed}]"
    end
  end
  
  class Parser
    attr_accessor :config, :blocks
    
    def initialize(c={})
      @config = c
      @blocks = []
      @state  = {:pos => Point[0,0,0], :feed => 0.0}
      @profiler = Profiler.new @config
    end
    
    def parse
      i = 0
      move = {}
      File.foreach(@config[:file]) do |line|
        puts "Parsing line #{i+=1}: #{line}"
        b = Block.new line
        move[:line]  = line
        move[:type]  = b.type
        move[:feed]  = b.feed || @state[:feed]
        move[:start] = @state[:pos]
        move[:end]   = b.target.modal(@state[:pos])
        l = move[:end] - move[:start]
        move[:prof]  = @profiler.velocity_profile(0, move[:feed], 0, l)
        move[:delta] = move[:end].delta(move[:start])
        move[:dt]    = @profiler.dt
        
        @state[:pos] = move[:end]
        @state[:feed] = move[:feed]
        
        @blocks << move.dup
      end
      return i
    end
    
    def method_missing(method, *args)
      raise "No config #{method} available" unless @config[method]
      @config[method]
    end
    
  end
  
  class Profiler
    attr_reader :times, :feeds, :accel, :dt
    
    def initialize(c={})
      @cfg = c
    end
    
    def velocity_profile(f_s, f_m, f_e, l)
      f_s = f_s.to_f
      f_m = f_m.to_f
      f_e = f_e.to_f
      l   = l.to_f
         
      dt_1 = ((f_m - f_s) / @cfg[:A].to_f).abs
      dt_2 = ((f_m - f_e) / @cfg[:D].to_f).abs
      dt_m = l / f_m- dt_1 * (f_m+f_s)/(2*f_m) - dt_2 * (f_m+f_e)/(2*f_m)

      if dt_m >= 0.0
        q  = quantize(dt_1+dt_m+dt_2, @cfg[:t_q], :up)
        dt_m += q[1]
        f_m = (2*l -f_s*dt_1 -f_e*dt_2)/(dt_1+dt_2+2*dt_m)
        a   = (f_m - f_s) / dt_1
        d   = (f_e - f_m) / dt_2
      else
        dt_1 = Math::sqrt(2*l / (@cfg[:A] + @cfg[:A]**2 / @cfg[:D]))
        dt_2 = dt_1 * @cfg[:A] / @cfg[:D]
        q  = quantize(dt_1 + dt_2, @cfg[:t_q], :up)
        dt_m = 0.0
        dt_2 += q[1]
        f_m = f_s + 2 * l / (dt_1 + dt_2)
        a = @cfg[:A]
        d = (f_e - f_m) / dt_2
      end
      
      dt  = q[0]
      
      @times = [dt_1, dt_m, dt_2]
      @feeds = [f_s, f_m, f_e]
      @accel = [a, d]
      @dt    = dt
      
      proc do |t|
        if t < dt_1
          r = f_s * t + a * t**2 / 2
        elsif t < dt_1 + dt_m
          r = (f_s + f_m) * dt_1 / 2 + f_m * (t - dt_1)
        else
          t_2 = dt_1 + dt_m
          r = (f_s + f_m)*dt_1/2 + f_m*dt_m + f_m*(t-t_2) + d/2 * (t**2 + t_2**2) - d*t*t_2
        end
        r / l  
      end
    end
    
    private
    def quantize(x,q,dir=:up)
      r =[]
      q = q.to_f
      if (x % q) == 0.0
        return [x, 0.0]
      end
      
      if dir == :up
        r << ((x / q).to_i + 1) * q
        r << r[0] - x
      else
        r << ((x / q).to_i) * q
        r << r[0] - x        
      end
      r
    end
    
  end

  class Interpolator
    attr_accessor :block, :blocks, :i
    
    def initialize(blocks)
      @blocks = blocks
      self.select(0)
    end
    
    def select(b)
      @i = b
      @block = @blocks[b]
    end
    
    def next
      @block = @blocks[@i += 1]
    end
    
    def eval(t)
      p = Point[]
      case @block[:type]
      when :G00
        p = @block[:end]
      when :G01
        [:X, :Y, :Z].each do |ax|
          p[ax] = @block[:start][ax] + @block[:delta][ax] * @block[:prof].call(t)
        end
      end
      p
    end
  end
  
end


