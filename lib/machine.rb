#!/usr/bin/env ruby
#
# Created by Paolo Bosetti on 2008-03-17.
# Copyright (c) 2008 University of Trento. All rights 
# reserved.
require "lib/pid"

module RNC
	class Axis
		include Math
		
		attr_accessor :v_0, :x_0, :thrust, :force, :mass
		attr_accessor :set_point
		def initialize(cfg={})
			@v_0    = 0.0
			@x_0    = 0.0
			@thrust = 0.0
			@set_point = 0.0
			@force  = cfg[:force].to_f || 0.0
			@mass   = cfg[:mass].to_f  || 1000.0
			@res    = cfg[:res].to_f   || 500.0
			@pid    = PID.new(cfg[:p], cfg[:i], cfg[:d])
			@pid.saturation = [-cfg[:max_f], cfg[:max_f]]
		end
	
		def state=(s)
			@x_0 = s[:x]
			@v_0 = s[:v]
			s
		end
	
		def state(t=0)
			x = ((-1 + exp(-(@res*t)/@mass))*@mass*(@thrust - @res*@v_0) +
				@res*(t*@thrust + @res*@x_0))/@res**2
			v = (@thrust + (- @thrust + @res*@v_0)/exp((@res*t)/@mass))/@res
			# x = (- @force*t**2 + t**2*@thrust + 2*@mass*t*@v_0 + 2*@mass*@x_0)/
			#       (2.0*@mass)
			# v = (-(@force*t) + t*@thrust + @mass*@v_0)/@mass
			self.state = {:x => x, :v => v }
		end
		
		def go_to(x)
			@pid.set_point = x
		end
		
		def step(t)
			@pid.actual = @x_0
			@thrust = @pid.output(t, @v_0)
			self.state(t)
		end
		
		def error
			@pid.error
		end
	
		def inspect
			"#{@pid.set_point} #{@x_0} #{@v_0}"
		end

	end

	class Machine
		def initialize(cfg)
			@x = Axis.new(cfg[:x])
			@y = Axis.new(cfg[:y])
			@z = Axis.new(cfg[:z])
		end
	
		def states=(s)
			@x.state = s[0]
			@y.state = s[1]
			@z.state = s[2]		
		end
		
		def states(t)
			s = [@x.state(t), @y.state(t), @z.state(t)]
			self.states = s
			s
		end
		
		def go_to(p)
			@x.go_to p[0]
			@y.go_to p[1]
			@z.go_to p[2]
		end
		
		def step(t)
			state = []
			state << @x.step(t)
			state << @y.step(t)
			state << @z.step(t)
			# puts "#{@x.thrust} #{@y.thrust} #{@z.thrust} "
			state
		end
	
		def error
			Math::sqrt(@x.error**2 + @y.error ** 2 + @z.error**2)
		end
	
		def inspect
			"#{@x.inspect} #{@x.thrust} #{@y.inspect} #{@y.thrust} #{@z.inspect} #{@z.thrust}"
		end
	
	end
end
