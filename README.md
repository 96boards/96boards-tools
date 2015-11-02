#96boards-tools
##Overview  

This is the rudimentary beginnings of the 96boards-tools, a repository of
generally useful bits an pieces to make 96Boards more standard across the
board.  The intent is to make it easy to control 96Boards family of boards
that confirm to the CE and EE spec.

The 96Boards-tools trys to abstract the info so that you can just
use any 96Boards board you are using without having to lookup anything
special about the pirticular SoC on the board.

##70-96boards-common.rules

This file will standarize the UART's on all 96Boards.  With this in place,
for the boot UART will be at /dev/tty96B0 and the secondary UART will be at
/dev/tty98B1.  The file will need to be installed and present at boot time,
if you are using a Linaro reference image for 96Boards the file will be in
place, however if you roll your own or install an image from a distribution,
the special bits targeting the 96Boards might not be there. So this will
help you install the needed bits.

##Install the file.
If you are running a Debian install or a Debian derivative download and
install the Debian package. You can use dpkg -i 

If you are not using a Debian derivative, then download the file
70-96boards-common.rules which is a text file that will need to be installed
in /etc/udev/rules.d/ directory.  So from where you download the file do:

  $ sudo mv 70-96boards-common.rules /etc/udev/rules.d/.<enter>

and the file will be placed where it needs to be, then simply reboot the
system and you should have the standard UART names.

##License

This file is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free
Software Foundation; version 2.0 of the License, or (at your option) any
later version.

This library is distributed in the hope that it will be useful, 
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU 
General Public License for more details.

You should have received a copy of the GNU General Public License along with
this file; if not, write to the Free Software Foundation, Inc., 51 Franklin
St, Fifth Floor, Boston, MA 02110-1301 USA

