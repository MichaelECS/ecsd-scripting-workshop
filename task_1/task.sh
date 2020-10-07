#!/bin/bash

# 1
MYVAR="This is my var"
echo $MYVAR

# 2
MYBIGVAR="$MYVAR, and this is my var with \"'s in it"
echo $MYBIGVAR

# 3
echo "$1"

# 4
touch That\'s\ All\ Folks.txt

# 5
rm That\'s\ All\ Folks.txt
