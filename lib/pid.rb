#!/usr/bin/env ruby
#
#  Created by Paolo Bosetti, University of Trento on 2007-10-16.
#  Copyright (c) 2007. All rights reserved.
#  PID v2 - enhanced with variable gains

=begin rdoc
  Proportional Integrative Differential control class.
  Each gain can be specified as a constant as well as a Proc object. This
  allows to write a variable-gain PID as in the following example:
  
    pid = PID.new(1, Proc.new {|x| x**2}, 0)
    pid.set_point = sp
    pid_actual = ac
    output = pid.update(dt, gcp)
  
  where the integrative gain is a square function of a suitable gain control
  parameter +gcp+.
  
  The Proc trick can be easily customized to provide analytic or piecewise 
  function, as well as look-up tables.
  
  Once PID object has been instantiated and the gains have been defined, 
  the usage scheme within a control loop is the following:
  *   Update the set point value calling <tt>pid.set_point=</tt>
  *    Update the actual value calling <tt>pid.actual=</tt>
  *    Get the PID output by calling <tt>pid.update(dt, gcv)</tt>, where +dt+ is the elapsed time since the previous step and +gcv+ is the gain controlling variable (a value; set it to +nil+ if the gain is constant).
        
  If the +saturation+ instance variable is a two elements Array, 
  then a saturation 
  adjustment is performed, so that the output value is never smaller 
  than larger than <tt>saturation[0]</tt> and never larger than
  <tt>saturation[1]</tt> and that no error is integrated when the 
  control is saturating. The +saturate+ method gives a boolean state of the
  saturation algorithm (true is the control is saturating).
  
  Set +saturation+ to 0 (default) in order to disable the saturation
  compensation.
  
=end
class PID
  @@version = 3
  def PID.version
    @@version
  end
  
  attr_accessor :set_point, :actual, :saturation
  attr_reader   :error, :saturate
  attr_reader   :p,  :i,  :d
  attr_writer   :kp, :ki, :kd
  
=begin rdoc
  Instantiates a new PID with P, I and D gains (defaults to 1.0)
=end
  def initialize(kp=1.0, ki=1.0, kd=1.0)
    @saturation = 0
    @saturate   = false
    @kp         = 0
    @ki         = 0
    @kd         = 0   
    reset(kp, ki, kd)
  end
  
=begin rdoc
  Resets gains, values, and set point.
=end
  def reset(kp=1.0, ki=1.0, kd=1.0)
    @kp        = kp
    @ki        = ki
    @kd        = kd
    @p         = @i = @d = 0.0
    @set_point = @actual = 0.0
    @error     = 0.0   
  end
  
=begin rdoc
  Computes the PID output for a given +dt+ time step. If a +gain_par+ is 
  provided, passes it to the Proc objects representing the variable gains.
=end
  def output(dt, gain_par = nil)
    @gain_par      = gain_par
    previous_error = @error
    @error         = @set_point - @actual
    @p             =      kp * @error
    @i             = @i + ki * @error * dt
    @d             =      dt != 0 ? kd * (@error - previous_error) / dt : 0.0
    output = @p + @i + @d
    # print "#{output} -> "
    @saturate = false
    unless @saturation == 0
      if output > @saturation[1]
        @saturate = true
        @i = @saturation[1] - @p - @d  
        @i = 0 if @i < 0
      end
    
      if output < @saturation[0]
        @saturate = true
        @i = @saturation[0] - @p - @d
        @i = 0 if @i > 0
      end
    
      output = @p + @i + @d
      if output > @saturation[1] 
        output = @saturation[1]
      elsif output < @saturation[0]
        output = @saturation[0]
      end
    end
    # puts kp
    output
  end

=begin rdoc
  Dynamically evaluates the gains.
=end
  def method_missing(method, *args)
    method = method.to_s
    raise "Undefined method #{method}" unless %w(kp ki kd).include? method
    
    par = self.instance_variable_get "@"+method
    case par
    when Numeric
      par
    when Proc
      par.call(@gain_par)
    else
      0
    end
  end
  
end


# Sample run (unit step):
# p = PID.new(1, Proc.new {|x| x**2}, 0)
# p.saturation = 0
# 
# p.set_point = 1.0
# vals = [0.1, 0.1001, 0, 0, 0, 0.08, 0.3, 0.6, 0.8, 0.95, 0.97, 0.99, 1.1, 1.0]
# vals.each_with_index do |v,i|
#   p.actual = v
#   puts "[#{i}]\t#{v.to_s.ljust(10)}-> #{p.output(0.001,v)} [#{p.saturate}]"
# end
# >> [0]  0.1       -> 0.900009 [false]
# >> [1]  0.1001    -> 0.899918017006999 [false]
# >> [2]  0         -> 1.000018017007 [false]
# >> [3]  0         -> 1.000018017007 [false]
# >> [4]  0         -> 1.000018017007 [false]
# >> [5]  0.08      -> 0.920023905006999 [false]
# >> [6]  0.3       -> 0.700086905006999 [false]
# >> [7]  0.6       -> 0.400230905006999 [false]
# >> [8]  0.8       -> 0.200358905006999 [false]
# >> [9]  0.95      -> 0.050404030006999 [false]
# >> [10]  0.97      -> 0.030432257006999 [false]
# >> [11]  0.99      -> 0.010442058006999 [false]
# >> [12]  1.1       -> -0.0996789419930011 [false]
# >> [13]  1.0       -> 0.000321058006999 [false]
