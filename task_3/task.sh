#!/bin/bash

# 1
# $# gives the number of arguments provided
case $# in
	[0-2]) 	
		echo "Too few arguments, please give 3 arguments"
    	exit 1
	;;
	[3])
		echo $1 $2 $3
		#2
		crontab -l | { cat; echo "* * * * *" $(pwd)/$0; } | crontab -
		exit 0
		
	;;
	*)
		echo "That's too many arguments, please give 3 arguments"
		exit 2
	;;
esac

