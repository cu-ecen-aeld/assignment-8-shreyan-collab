#!/bin/sh

case "$1" in 
	start)
		echo "Loading module misc-modules and scull"
		modprobe hello
		/usr/bin/scull_load
		/usr/bin/module_load faulty
		
		;;
	stop)
		echo "Stopping scull and misc-modules"
		rmmod hello
		/usr/bin/scull_unload
		/usr/bin/module_unload faulty
		
		;;
	*)
	exit 1
esac
exit 0
