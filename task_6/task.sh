#!/bin/bash

declare -a SENTENCE
echo "Give me a sentence:" 
read -a SENTENCE

echo "Replace which character:"
read REPLACE

echo "With what:"
read REPLACEMENT

SENTENCE=("${SENTENCE[@]//$REPLACE/$REPLACEMENT}")

echo ${SENTENCE[@]}
