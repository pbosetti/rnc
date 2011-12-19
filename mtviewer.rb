#!/usr/bin/env ruby
require 'rubygems'
require 'ffi-opengl'
require 'mathn'
require './lib/simpleipc'
require 'socket'
include FFI,GL,GLU,GLUT

class MTViewer
  attr_accessor :light_diffuse, :light_position
  attr_reader :max_frames
  
  def initialize(cfg={})
    @x_rotated, @y_rotated, @z_rotated = 0.0, 0.0, 0.0
    
    @draw = {:box => true, :axes => true}
    @range = (cfg[:range] || {:x => 500, :y => 500, :z => 500})
    glutInit(MemoryPointer.new(:int, 1).put_int(0, 0), 
             MemoryPointer.new(:pointer, 1).put_pointer(0, nil))
    
  end
  
  def display
    glClear(GL_COLOR_BUFFER_BIT)
    glLoadIdentity()
    glTranslatef(0.0, 0.0, -5.0)
    glRotatef(@x_rotated, 1.0, 0.0, 0.0)
    glRotatef(@y_rotated, 0.0, 1.0, 0.0)
    glRotatef(@z_rotated, 0.0, 0.0, 1.0)
    glScalef(2.0, 1.0, 1.0)
    glutSolidCube(1.0)
    
    # if @draw[:box]
    #   #glPushMatrix()
    #   glLineWidth(3.0)
    #   glTranslatef(0, @range[:y]/2.0, @range[:z]/2.0)
    #   glScalef(@range[:x], @range[:y], @range[:z])
    #   glColor4f(1, 1, 1, 0.5)
    #   glutWireCube(1.0)
    #   #glPopMatrix()
    #   glLineWidth(1.0)
    # end
    # 
    glFlush		
    glutSwapBuffers
  end
  
  def reshape(x, y)
    exit if (y == 0 || x == 0) 
    glMatrixMode(GL_PROJECTION)  
    glLoadIdentity
    gluPerspective(30.0, x / y, 0.5, 20.0)
    glMatrixMode(GL_MODELVIEW)
    glViewport(0, 0, x, y)
  end
    
  def motion(x, y)
    
  end
  
  def mouse(button, state, x, y)
    
  end
  
  def keyboard(key, x, y)
    p [key, x, y]
    case  (key)
      when ?x
        $x = ($x + $incr)
      when ?X
        $x = ($x - $incr)
      when ?y
        $y = ($y + $incr)
      when ?Y
        $y = ($y - $incr)
      when ?z
        $z = ($z + $incr)
      when ?Z
        $z = ($z - $incr)
      when ?b
        $draw[:box] = !$draw[:box]
      when ?a
        $draw[:axes] = !$draw[:axes]
      when 27
        puts "Closing viewer"
        exit(0)
    end
    puts "X#{$x} Y#{$y} Z#{$z}"
  end
  
  
  def idle
    @x_rotated += 0.3
    @y_rotated += 0.1
    @z_rotated += -0.4
    sleep 0.01
    display
  end
  
  def start
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB)
    glutInitWindowSize(300, 300)
    glutCreateWindow("Cube example")
    glLightfv(GL_LIGHT0, GL_DIFFUSE, @light_diffuse)
    glLightfv(GL_LIGHT0, GL_POSITION, @light_position)
    glEnable(GL_LIGHT0)
    glEnable(GL_LIGHTING)
    glEnable(GL_CULL_FACE)
    glShadeModel(GL_SMOOTH)
    glClearColor(0.0, 0.0, 0.0, 0.0)
    glutDisplayFunc(method(:display).to_proc)
    glutIdleFunc(method(:idle).to_proc)
    glutReshapeFunc(method(:reshape).to_proc)
    glutMotionFunc(method(:motion).to_proc)
    glutMouseFunc(method(:mouse).to_proc)
    glutKeyboardFunc(method(:keyboard).to_proc)
    glutMainLoop
  end
end #Class MTViewer

if $0 == __FILE__
  app = MTViewer.new
  app.light_diffuse = MemoryPointer.new(:float, 4).put_array_of_float(0, [1.0, 0.0, 0.0, 1.0])
  app.light_position = MemoryPointer.new(:float, 4).put_array_of_float(0, [1.0, 1.0, 1.0, 0.0])
  app.start
end