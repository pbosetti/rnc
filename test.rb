#!/usr/bin/env ruby 

def power(exp)
  exp = exp.to_f
  proc do |t|
    t ** exp
  end
end

p3 = power(3)
puts p3.call(5)
puts p3.call(7)