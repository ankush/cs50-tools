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

echo "seting up cs50-tools folder"
mkdir -p ~/cs50-tools
cp -R check50/ ~/cs50-tools
cp -R spl/ ~/cs50-tools
cp style50.jar ~/cs50-tools

echo "setting up aliases"
echo 'alias make50='\''make CC=clang CFLAGS="-ggdb3 -O0 -std=c99 -Wall -Werror" LDLIBS="-lcs50 -lm -lcs"'\''' >> ~/.bashrc
echo 'alias style50="/home/ankush/cs50-tools/style50.jar"' >> ~/.bashrc
echo 'alias check50="/home/ankush/cs50-tools/check50/bin/check50"' >> ~/.bashrc

echo "Setting up SPL library"
cd ~/cs50-tools/spl/
make
sudo make install
echo "To use spl library, copy spl.jar from your dekstop to same directory as .c and executable "
sudo chown $USER:$USER ~/Desktop/spl.jar
make clean
