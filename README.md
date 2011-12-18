Ruby Numerical Control - RNC
============================

Introduction
------------
RNC is a (very) simplified Computer Numerical Control written in Ruby and aimed at describing how a CNC work.
It is developed during a master degree course on Manufacturing Automation, and the core code can be interactively written in about 20 hours of lesson.

Prerequisites
-------------
Currently, a code rewriting is in process so to make it as easy as possible for the students to have a common system setup. This is crucial in order to minimize the time needed during lesson to help solving minor issues in system configuration, which can prove demanding when students use three (or more) different operating systems (Win, OSX, and Linux).

Consequently, I decided to select Debian Linux 6.0.3 as the reference system. It can be easily and freely installed thanks to [VirtualBox](https://www.virtualbox.org/wiki/Downloads) on any other system. Two scripts help setting up the system for start coding RNC:

1. System packages: 

    `bash < <(wget -qO - https://raw.github.com/gist/1490025)`

2. Ruby and its environment:

    `bash < <(wget -qO - https://raw.github.com/gist/1490243)`

RNC is made by two executables scripts: `rnc.rb`, which is the main CNC program, that loads a G-code part-program and generates the commands for machine tool axes (in soft real-time), and `viewer.rb`, which shows a 3D simulation of the machine tool movements.

