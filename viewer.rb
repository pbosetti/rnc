#!/usr/bin/env ruby
#
#  robot.rb - Created by Paolo Bosetti on 2008-03-24.
#  Copyright (c) 2008. All rights reserved.

# require 'rubygems'
require './lib/ffi-opengl'
require 'mathn'
require './lib/simpleipc'
require 'socket'
include FFI,GL,GLU,GLUT



$x = 0
$y = 0
$z = 0
$fXDiff = 0
$fYDiff = 35
$fZDiff = 0
$xLastIncr = 0
$yLastIncr = 0
$fScale = 1.0
$ftime = 0
$xLast = -1
$yLast = -1
$bmModifiers = 0
$rotate = true
$incr = 10
$draw = {:box => true, :axes => true}
$axl = 500
TIMER_FREQUENCY_MILLIS = 20
SCALE_FACTOR = 0.05

$x_s = {:x => 600, :y => 40, :z => 100} 
$y_s = {:x => 50, :y => 600, :z => 50}
$z_s = {:x => 40, :y => 40, :z => 600}
$range = {:x => 500, :y => 500, :z => 500}
$x_pan = 0.0
$y_pan = 0.0

$pack_size = 40
$from_rnc = SimpleIPC.new :port => 5000, :nonblock => true
$from_rnc.listen

class MTViewer
  def init    
    glClearColor(0.0, 0.0, 0.0, 0.0)
    glShadeModel(GL_SMOOTH)
    glEnable(GL_DEPTH_TEST)
    glEnable(GL_BLEND)
    glEnable(GL_LINE_SMOOTH)
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
  end

  def display
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_ACCUM_BUFFER_BIT)
    glPushMatrix()
    glRotatef($fYDiff, 1,0,0)
    glRotatef($fXDiff, 0,1,0)
    glRotatef($fZDiff, 0,0,1)
    glScalef($fScale, $fScale, $fScale)
    # glMatrixMode(GL_PROJECTION)
    # glTranslatef(0.1*$x_pan, 0.1*$y_pan, 0.0)
    # glMatrixMode(GL_MODELVIEW)
  
    if $draw[:axes]
      glColor4f(1,0,0,0.66)
      glBegin(GL_LINES)
        glVertex3f(-$axl,0,0)
        glVertex3f($axl,0,0)
      glEnd()
      glPushMatrix()
      glTranslatef($axl,0,0)
      glRotatef(90,0,1,0)
      glutSolidCone(20, 30, 20, 1)
      glPopMatrix()

      glColor4f(0,1,0,0.66)
      glBegin(GL_LINES)
        glVertex3f(0,-$axl,0)
        glVertex3f(0,$axl,0)
      glEnd()
      glPushMatrix()
      glTranslatef(0,$axl,0)
      glRotatef(-90,1,0,0)
      glutSolidCone(20, 30, 20, 1)
      glPopMatrix()

      glColor4f(0,0,1,0.66)
      glBegin(GL_LINES)
        glVertex3f(0,0,-$axl)
        glVertex3f(0,0,$axl)
      glEnd()
      glPushMatrix()
      glTranslatef(0,0,$axl)
      glRotatef(0,0,1,0)
      glutSolidCone(20, 30, 20, 1)
      glPopMatrix()
    end
  

    glLineWidth(3.0)
    glPushMatrix()
    glTranslatef(0, -($z_s[:y]/2.0 + $x_s[:y]/2), -$x_s[:z]/2.0)
    glScalef($x_s[:x], $x_s[:y], $x_s[:z])
    glColor4f(1,0,0,0.9)
    glutSolidCube(1)
    # glColor4f(0,0,0,1)  
    #   glutWireCube(1.0)
    glPopMatrix()
  
    glPushMatrix()
    glTranslatef($x-($z_s[:x]/2.0 + $y_s[:x]/2.0), $y_s[:y]/2.0-$z_s[:y]/2.0, -$x_s[:z]/2.0) 
    glScalef($y_s[:x], $y_s[:y], $y_s[:z])
    glColor4f(0,1,0,0.9)
    glutSolidCube(1.0)
    # glColor4f(0,0,0,1)  
    #   glutWireCube(1.0)
    glPopMatrix()

    glPushMatrix()
    glTranslatef($x, $y, $z-$z_s[:z]/2.0)
    glScalef($z_s[:x], $z_s[:y], $z_s[:z])
    # glTranslatef(0, 0, -0.04)
    glColor4f(0,0,1, 0.9)
    glutSolidCube(1.0)
    # glTranslatef(0,0,0.5)
    # glColor4f(1,1,1,1)
    # glutSolidCone(0.3,0.05,10,10)
    # glColor4f(0,0,0,1)  
    #   glutWireCube(1.0)
    glPopMatrix()
    glLineWidth(1.0)

    if $draw[:box]
      glPushMatrix()
      glLineWidth(3.0)
      glTranslatef(0, $range[:y]/2.0, $range[:z]/2.0)
      glScalef($range[:x], $range[:y], $range[:z])
      glColor4f(1, 1, 1, 0.5)
      glutWireCube(1.0)
      glPopMatrix()
      glLineWidth(1.0)
    end

    glPopMatrix()
    glFlush()
    glutSwapBuffers()
  end

  def reshape(w, h)
    glViewport(0, 0,  w,  h) 
    glMatrixMode(GL_PROJECTION)
    glLoadIdentity()
    gluPerspective(65.0,  w/ h, 10.0, 2000.0)
    glMatrixMode(GL_MODELVIEW)
    glLoadIdentity()
    glTranslatef(0, 0, -2*$z_s[:z])
  end

  def idle
    # data = $from_rnc.get {|s| s.split(',').map {|e| e.to_f}}
    # $x, $y, $z = data[0..2] if data
    glutPostRedisplay()
    #display()
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

  def motion(x,y)
    if ($xLast != -1 || $yLast != -1)
      $xLastIncr = x - $xLast
      $yLastIncr = y - $yLast
      if ($bmModifiers & GLUT_ACTIVE_ALT != 0)
        if ($xLast != -1)
          $fScale += $yLastIncr*SCALE_FACTOR
          $fScale = $fScale.abs
          $x_pan = $y_pan = 0
        end
      elsif ($bmModifiers & GLUT_ACTIVE_SHIFT != 0)
        if ($xLast != -1)
          $x_pan = $xLastIncr * 2.5
          $y_pan = -$yLastIncr * 2.5
          glMatrixMode(GL_PROJECTION)
          glTranslatef($x_pan, $y_pan, 0.0)
          glMatrixMode(GL_MODELVIEW)
        end
      else
        if ($xLast != -1)
          $fXDiff += $xLastIncr
          $fYDiff += $yLastIncr
          $x_pan = $y_pan = 0
        end
      end
    end
    $xLast = x
    $yLast = y
  end

  def mouse(button,state,x,y)
    $bmModifiers = glutGetModifiers()
    if (button == GLUT_LEFT_BUTTON)
      if (state == GLUT_UP)
        $xLast = -1
        $yLast = -1
      end
      $xLastIncr = 0
      $yLastIncr = 0
    end
  end
  
  def initialize
    glutInit(MemoryPointer.new(:int, 1).put_int(0, 0), 
                 MemoryPointer.new(:pointer, 1).put_pointer(0, nil))
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH | GLUT_ALPHA)
    glutInitWindowSize(500, 500) 
    glutInitWindowPosition(100, 100)
    glutCreateWindow($0)
    self.init()
    glutDisplayFunc(method(:display).to_proc) 
    glutReshapeFunc(method(:reshape).to_proc)
    glutKeyboardFunc(method(:keyboard).to_proc)
    glutMotionFunc(method(:motion).to_proc)
    glutMouseFunc(method(:mouse).to_proc)
    glutIdleFunc(method(:idle).to_proc)
  end
  
  def start
    glutMainLoop()
  end
end #Class MTViewer

MTViewer.new.start