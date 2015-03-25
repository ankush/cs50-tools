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
wget -O cs50library.deb http://mirror.cs50.net/appliance50/2014/debs/dists/trusty/main/binary-i386/library50-c_6-0_i386.deb -qq
dpkg -i cs50library.deb
rm cs50library.deb

echo "All done."
echo "Now execute setup.sh as normal user."
