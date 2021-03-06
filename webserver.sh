#!/bin/bash
#
# Simple script to control webServer
#
# Syntax: sudo ./webServer.sh [start|restart|stop]
#
# Boubakr NOUR <n.boubakr@gmail.com>
# Distributed under the GPL version 3 license

case "$1" in
	"start")
		#echo "Starting Web Server"
                sudo service apache2 start
                echo " * IP Address: `ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'`"
                echo " *"
                sudo service mysql start
		;;
	"restart")
		#echo "Restarting Web Server"
		sudo service apache2 restart && sudo service mysql restart
		;;
	"stop")
		#echo "Stopping Web Server"
		sudo service apache2 stop && sudo service mysql stop
		;;
	* )
		#echo "Usage: $0 [start|restart|stop]"
	;;
esac
