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
apt-get update -qq
apt-get install valgrind gdb

echo "valgrind is now installed and ready for memory checks"

