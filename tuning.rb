#!/usr/bin/env ruby
#
# Created by Paolo Bosetti on 2008-06-12.
# Copyright (c) 2008 University of Trento. All rights 
# reserved.
T_q = 0.05
cfg    = {
  :x => {:mass => 500, :max_f => 500000, :res => 2000, 
    :p => 48000, :i => 3000, :d => 18000},
  :y => {:mass => 350, :max_f => 500000, :res => 2000, 
    :p => 48000, :i => 3000, :d => 18000},
  :z => {:mass => 150, :max_f => 500000, :res => 2000, 
    :p => 48000, :i => 3000, :d => 18000}
}

T_q = 0.01
cfg    = {
  :x => {:mass => 500, :max_f => 500000, :res => 2000, 
    :p => 240000, :i => 3000, :d => 36000},
  :y => {:mass => 350, :max_f => 500000, :res => 2000, 
    :p => 48000, :i => 3000, :d => 18000},
  :z => {:mass => 150, :max_f => 500000, :res => 2000, 
    :p => 48000, :i => 3000, :d => 18000}
}
