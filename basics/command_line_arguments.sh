#!/bin/bash

echo "Total of arguments: $#"
echo "Name of script: $0"
echo "$1"
echo "$2"

# How to check if I have at least one parameter:

# The first way:
if [ "$1" != "" ]; then
    echo "Positional parameter 1 contains something"
else
    echo "Positional parameter 1 is empty"
fi

# The second way:
if [ $# -gt 0 ]; then
    echo "Your command line contains $# arguments"
else
    echo "Your command line contains no arguments"
fi

