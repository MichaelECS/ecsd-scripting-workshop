#!/bin/bash

#1
HOUR=$(date +%H)

if [ "$HOUR" -eq 13 ]; then
	echo "Lunch time!"
else
	echo "Not lunch time..."
fi

#2
SENTENCE=$1

if [ ${#SENTENCE} -gt 20 ]; then
	echo ${#SENTENCE}
fi

#3
MEAT=$'1. Steak, mash and peas\n2. Salmon, Potatoes and Green Beans\n3.  Cheeseburger'
VEG=$'1. Mash and peas\n2. Potatoes and Green Beans\n3. Cheese'

case $2 in
	[1]) echo "$MEAT" ;;
	[2]) echo "$VEG" ;;
	*) echo "Please choose menu 1 or 2" ;;
esac

case ${#2} in
	[1-4])
		MESSAGE="$2 is a short name!"
	;;
	*)
		MESSAGE="$2 is a longer name!"
	;;
esac

#4
USER="default"

case $3 in
	[1])
		USER="Ted"
	;;
	[2])
		USER="Neil"
	;;
esac

echo "Hello, how are you doing $USER?"

#5
echo $(date +%H)
case $(date +%H) in
	[0-9]|11) echo "Good morning" ;;
	[12]) echo "It is noon" ;;
	1[3-7]) echo "Good afternoon" ;;
	*) echo "Good evening" ;;
esac
	
