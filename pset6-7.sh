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
echo "Updating packages and installing LAMP server"
echo "You'll need to setup MySQL and PHPMYADMIN password in this process."
echo "Please write them down."
apt-get update -qq
apt-get install lamp-server^
apt-get install libapache2-mod-php5 phpmyadmin telnet php5-cgi mysql-client

echo "All done. You're computer is now ready for pset6 and pset7"
