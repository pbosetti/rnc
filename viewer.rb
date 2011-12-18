#!/usr/bin/env ruby
#
#  robot.rb - Created by Paolo Bosetti on 2008-03-24.
#  Copyright (c) 2008. All rights reserved.

require 'rubygems'
require 'opengl'
require 'mathn'
require './lib/simpleipc'
require 'socket'
include Gl,Glu,Glut



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

def init
  glClearColor(0.0, 0.0, 0.0, 0.0)
  glShadeModel(GL_SMOOTH)
  glEnable(GL_DEPTH_TEST)
  glEnable(GL_BLEND)
  glEnable(GL_LINE_SMOOTH)
  glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
end

display = Proc.new do
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_ACCUM_BUFFER_BIT)
  glPushMatrix()
  glRotate($fYDiff, 1,0,0)
  glRotate($fXDiff, 0,1,0)
  glRotate($fZDiff, 0,0,1)
  glScale($fScale, $fScale, $fScale)
  # glMatrixMode(GL_PROJECTION)
  # glTranslate(0.1*$x_pan, 0.1*$y_pan, 0.0)
  # glMatrixMode(GL_MODELVIEW)
  
  if $draw[:axes]
    glColor(1,0,0,0.66)
    glBegin(GL_LINES)
      glVertex(-$axl,0,0)
      glVertex($axl,0,0)
    glEnd()
    glPushMatrix()
    glTranslate($axl,0,0)
    glRotate(90,0,1,0)
    glutSolidCone(20, 30, 20, 1)
    glPopMatrix()

    glColor(0,1,0,0.66)
    glBegin(GL_LINES)
      glVertex(0,-$axl,0)
      glVertex(0,$axl,0)
    glEnd()
    glPushMatrix()
    glTranslate(0,$axl,0)
    glRotate(-90,1,0,0)
    glutSolidCone(20, 30, 20, 1)
    glPopMatrix()

    glColor(0,0,1,0.66)
    glBegin(GL_LINES)
      glVertex(0,0,-$axl)
      glVertex(0,0,$axl)
    glEnd()
    glPushMatrix()
    glTranslate(0,0,$axl)
    glRotate(0,0,1,0)
    glutSolidCone(20, 30, 20, 1)
    glPopMatrix()
  end
  

  glLineWidth(3.0)
  glPushMatrix()
  glTranslate(0, -($z_s[:y]/2.0 + $x_s[:y]/2), -$x_s[:z]/2.0)
  glScale($x_s[:x], $x_s[:y], $x_s[:z])
  glColor(1,0,0,0.9)
  glutSolidCube(1)
  # glColor(0,0,0,1)  
  #   glutWireCube(1.0)
  glPopMatrix()
  
  glPushMatrix()
  glTranslate($x-($z_s[:x]/2.0 + $y_s[:x]/2.0), $y_s[:y]/2.0-$z_s[:y]/2.0, -$x_s[:z]/2.0) 
  glScale($y_s[:x], $y_s[:y], $y_s[:z])
  glColor(0,1,0,0.9)
  glutSolidCube(1.0)
  # glColor(0,0,0,1)  
  #   glutWireCube(1.0)
  glPopMatrix()

  glPushMatrix()
  glTranslate($x, $y, $z-$z_s[:z]/2.0)
  glScale($z_s[:x], $z_s[:y], $z_s[:z])
  # glTranslate(0, 0, -0.04)
  glColor(0,0,1, 0.9)
  glutSolidCube(1.0)
  # glTranslate(0,0,0.5)
  # glColor(1,1,1,1)
  # glutSolidCone(0.3,0.05,10,10)
  # glColor(0,0,0,1)  
  #   glutWireCube(1.0)
  glPopMatrix()
  glLineWidth(1.0)

  if $draw[:box]
    glPushMatrix()
    glLineWidth(3.0)
    glTranslate(0, $range[:y]/2.0, $range[:z]/2.0)
    glScale($range[:x], $range[:y], $range[:z])
    glColor(1, 1, 1, 0.5)
    glutWireCube(1.0)
    glPopMatrix()
    glLineWidth(1.0)
  end

  glPopMatrix()
  glFlush()
  glutSwapBuffers()
end

reshape  = lambda do |w, h|
  glViewport(0, 0,  w,  h) 
  glMatrixMode(GL_PROJECTION)
  glLoadIdentity()
  gluPerspective(65.0,  w/ h, 10.0, 2000.0)
  glMatrixMode(GL_MODELVIEW)
  glLoadIdentity()
  glTranslate(0, 0, -2*$z_s[:z])
end

idle = lambda do
  data = $from_rnc.get {|s| s.split(',').map {|e| e.to_f}}
  $x, $y, $z = data[0..2] if data
  glutPostRedisplay()
end

keyboard = lambda do|key, x, y|
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
    when ?\e
      exit(0)
  end
  puts "X#{$x} Y#{$y} Z#{$z}"
end

motion = lambda do |x,y|
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
        glTranslate($x_pan, $y_pan, 0.0)
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

mouse = lambda do |button,state,x,y|
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

glutInit
glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH | GLUT_ALPHA)
glutInitWindowSize(500, 500) 
glutInitWindowPosition(100, 100)
glutCreateWindow($0)
init()
glutDisplayFunc(display) 
glutReshapeFunc(reshape)
glutKeyboardFunc(keyboard)
glutMotionFunc(motion)
glutMouseFunc(mouse)
glutIdleFunc(idle)

glutMainLoop
