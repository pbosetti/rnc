# begin
#   require 'rubygems'
# rescue
#   nil # try without it
# end
puts "*****"
puts `pwd`
puts "*****"
require 'ffi'
require File.join(File.dirname(__FILE__), 'ffi-opengl/platform')
require File.join(File.dirname(__FILE__), 'ffi-opengl/gl')
require File.join(File.dirname(__FILE__), 'ffi-opengl/glu')
require File.join(File.dirname(__FILE__), 'ffi-opengl/glut')

