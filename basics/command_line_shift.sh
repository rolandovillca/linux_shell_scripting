#!/bin/bash

echo "You start with $# positional parameters"
echo

# Loop until all parameters are used up:
while [ "$1" != "" ]; do
    echo "Parameter 1 equals to $1"
    echo "You now have $# positional parameters"
    echo

    # Shift all parameters down by one
    shift
done
