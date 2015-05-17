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
  then echo "You forgot to use SUDO"
  sudo !!
fi
echo "Starting installation..."
echo "Updaing package cache..."
# apt-get update -qq

echo "Installing compiler and essential dependencies"
apt-get install -y build-essential clang make openjdk-7-jdk nodejs npm php5

echo "Installing CS50's libray for C."
cd library50-c-5
gcc -c -ggdb -std=c99 cs50.c -o cs50.o
ar rcs libcs50.a cs50.o
chmod 0644 cs50.h libcs50.a
mkdir -p /usr/local/include
chmod 0755 /usr/local/include
cp -f cs50.h /usr/local/include
mkdir -p /usr/local/lib
chmod 0755 /usr/local/lib
mv -f libcs50.a /usr/local/lib

echo "cs50 library is installed and ready for use"
echo "Run pset1-2setup.sh for setting up make50, style50 and check50"
