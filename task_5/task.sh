#!/bin/bash

#1
PASS="swordfish"
ATTEMPTS=0
MAX_ATTEMPTS=10

while [ $ATTEMPTS -lt $MAX_ATTEMPTS ]
do
	echo "What's the password?"
	read GIVEN_PASS
	if [ "$GIVEN_PASS" == "$PASS" ]; then
		echo "Yes, that's right!"
		break;
	fi
	ATTEMPTS=$(($ATTEMPTS + 1))
done

#2
echo "Give me the low end of a range, e.g. [<low>-20]:"
read LOW
echo "Give me the high end of a range, e.g. [1-<high>]:"
read HIGH

for i in $(seq $LOW $HIGH);
do
	echo $(($i ** $i))
done
