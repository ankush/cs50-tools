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
  then echo "seting up cs50-tools folder"
  mkdir -p ~/cs50-tools
  cp -R check50/ ~/cs50-tools
  cp style50.jar ~/cs50-tools

  echo "setting up aliases"
  echo 'alias make50='\''make CC=clang CFLAGS="-ggdb3 -O0 -std=c99 -Wall -Werror" LDLIBS="-lcs50 -lm -lcs"'\''' >> ~/.bashrc
  echo 'alias style50="~/cs50-tools/style50.jar"' >> ~/.bashrc
  echo 'alias check50="~/cs50-tools/check50/bin/check50"' >> ~/.bashrc
  echo "All done. Use make50 to compile files."
  echo "style50 and check50 and installed and ready to use."
else
  echo "Execute this script as normal user!"
fi
