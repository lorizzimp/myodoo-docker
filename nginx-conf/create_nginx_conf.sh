#!/bin/bash
# Erzeugt man eine nginx Konfiguration inkl. SSL
# Skript muss mit root-Rechten ausgeführt werden
# Version 2.0.0
# Date 14.06.2018
##############################################################################
#
#    Shell Script for Odoo, Open Source Management Solution
#    Copyright (C) 2014-now Equitania Software GmbH(<http://www.equitania.de>).
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################

myscriptpath="$PWD"
myserverpath="/etc/nginx/conf.d/"
myip=$1
mydomain=$2
myport=$3
mypollport=$4

echo "Dieses Skript erstellt einen Portweiterleitung auf die eingebene Domain für http!"
echo "Basepath: "$myscriptpath
echo "Serverpath: "$myserverpath

if [ "$myip" = "" ]; then
  echo "Insert the server ip address | Geben Sie die Server IP Adresse ein:"
  read myip
fi

if [ "$mydomain" = "" ]; then
  echo "Insert the domain name incl. Subdomain | Geben Sie den Domainnamen inkl. Subdomain ein:"
  read mydomain
fi

if [ "$myport" = "" ]; then
  echo "Insert the odoo port | Geben Sie den Port für Odoo ein:"
  read myport
fi

if [ "$mypollport" = "" ]; then
  echo "Insert the odoo polling port | Geben Sie den Port für Odoo ein:"
  read mypollport
fi

myolddomain="server.domain.de"
myoldip="ip.ip.ip.ip"
myoldport="oldport"
myoldpollport="pollport"

if [ "$myip" != "" ] || [ "$mydomain" != "" ] || [ "$myport" != "" ]; then
  cp  $myscriptpath"/nginx.server.domain.conf" $myserverpath"/$mydomain.conf"
  sed -i "s/$myolddomain/$mydomain/g" $myserverpath"/$mydomain.conf"
  sed -i "s/$myoldip/$myip/g" $myserverpath"/$mydomain.conf"
  sed -i "s/$myoldport/$myport/g" $myserverpath"/$mydomain.conf"
  sed -i "s/$myoldpollport/$mypollport/g" $myserverpath"/$mydomain.conf"
  echo "Finished!"
else
  echo "Parameter wasn't correct - Parameter waren fehlerhaft!"
fi