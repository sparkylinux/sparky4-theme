#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /opt/sparky/sparky4-panel.png
   	rm -rf /usr/share/themes/Sparky4
else
	if [ ! -d /opt/sparky ]; then
		mkdir -p /opt/sparky
	fi
	cp opt/* /opt/sparky/
	if [ ! -d /usr/share/themes/Sparky4 ]; then
		mkdir -p /usr/share/themes/Sparky4
	fi
	cp Sparky4/* /usr/share/themes/Sparky4/
fi
