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
  then echo "Please run as root (Hint: Use sudo)"
  exit
fi
echo "Starting installation..."
echo "This might take from 5-10 minute depending upon your internet speed."

# updating packages
apt-get update -qq && apt-get upgrade

# installing some essentials and optional packages
apt-get install build-essential clang make openjdk-7-jdk nodejs npm php5

# Installing cs50 library for C.
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

echo "All done."
echo "Now execute setup.sh as normal user."
exit 0
