#!/bin/bash

# 1
echo $((78 % 8))

# 2
ONE=$((4 ** 6))

echo $ONE

TWO=$((5 ** 3))

echo $TWO

echo $ONE $TWO

# 3
echo $(((4 ** 6) + (5 ** 3)))

# 4
if [ $ONE -eq $TWO ]; then
	echo "SAME"
else
	echo "DIFFERENT"
fi
