#!/bin/bash
#
# Copyright 2014 menatankush <ankushmenat@gmail.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
if [ "$EUID" -ne 0 ]
  then echo "Setting up SPL"
  cp -R spl/ ~/cs50-tools
  cd ~/cs50-tools/spl/
  echo "Builidng Stanford Portable Library"
  make
  echo "Installing Stanford Portable Library"
  sudo make install
  sudo chown "$USER" : "$USER" ~/Desktop/spl.jar
   echo "Cleaning"
  make clean
  echo "To use spl library, copy spl.jar from your dekstop to same directory as .c and executable "
  echo "Your computer is now ready for pset3"
else
    "Execute this script as normal user"
fi
