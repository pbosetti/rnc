Ruby Numerical Control - RNC
============================

Introduction
------------
RNC is a (very) simplified Computer Numerical Control written in Ruby and aimed at describing how a CNC work.
It is developed during a master degree course on Manufacturing Automation, and the core code can be interactively written in about 20 hours of lesson.

Currently, a code rewriting is in process so to make it as easy as possible for the students to have a common system setup. This is crucial in order to minimize the time needed during lesson to help solving minor issues in system configuration, which can prove demanding when students use three (or more) different operating systems (Win, OSX, and Linux).

Consequently, I decided to select Debian Linux 6.0.3 as the reference system. It can be easily and freely installed thanks to [VirtualBox](https://www.virtualbox.org/wiki/Downloads) on any other system (Windows, Mac). Linux Ubuntu should work as well, although at the moment it was not tested.

Installation
------------
First of all, you need a fresh, clean install of Debian Linux 6.0.3: you can download the installer from [here](http://cdimage.debian.org/debian-cd/current-live/i386/iso-hybrid/debian-live-6.0.3-i386-gnome-desktop.iso) (1.1Gb).

Then you have to install it. You have three choices:

1. make your laptop/PC dual boot
2. use a commercial virtualization software (VMWare, Parallels)
3. use a free virtualization software ([VirtualBox](https://www.virtualbox.org/wiki/Downloads))

Note that if you go for options 2. or 3. you don't need to burn the image on a DVD: just launch VirtualBox (or whatever), create a clean virtual machine with **at least 5 Gb of HD space**, and boot from the .iso image. Once Debian has booted, click on the "Install Debian" icon on your desktop and follow instructions.

Once your Debian machine has done installing (a virtual machine reboot is needed), open a root terminal ("*Applications > Accessories > Root Terminal*", it has a red icon) and copy and paste the following line (be careful: spaces matter!)

    bash < <(wget -qO - https://raw.github.com/gist/1490025)

this will install additional packages and libraries.

Once done, **close** this terminal and open a new standard terminal ("*Applications > Accessories > Terminal*") and copy/paste the following command:

    bash < <(wget -qO - https://raw.github.com/gist/1490243)

this will download and install ruby and some ruby libraries, and it will also copy on your Desktop an updated revision of RNC (in the subfolder `rnc`).

Comments
-------
RNC is made by two executables scripts: `rnc.rb`, which is the main CNC program, that loads a G-code part-program and generates the commands for machine tool axes (in soft real-time), and `viewer.rb`, which shows a 3D simulation of the machine tool movements.

