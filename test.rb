#!/usr/bin/env ruby
#
# Created by Paolo Bosetti on 2008-04-17.
# Copyright (c) 2008 University of Trento. All rights 
# reserved.
require 'rubygems'
require 'rosar'
require "lib/parser"
include RNC

r = ROSAR.instance

A = 100
D = A 
T_q = 0.005

prof = Profiler.new :A => A, :D => D, :t_q => T_q
r.activate
50.downto 5 do |len|
  points = []
  times = []
  l = prof.velocity_profile(0,100,0,len*10)
  t = 0.0
  while t <= prof.dt do
    points << l.call(t+=T_q)
    times << t
  end
  r.transfer :p=>points, :t=>times
  r.plot :x=>:t, :y=>:p, :typ=>"'s'", :col=>"'red'", :xlab=>"'Time (s)'", :ylab=>"'l ()'"
  r.abline "v=c(#{prof.times[0]}, #{prof.times[0] + prof.times[1]})"
end
