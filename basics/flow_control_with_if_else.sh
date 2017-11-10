#!/bin/bash

echo -n "Enter a number between 1 and 3 inclusive: "
read var

if [ "$var" = "1" ]; then
    echo "You entered one."
elif [ "$var" = "2" ]; then
    echo "You entered two."
elif [ "$var" = "3" ]; then
    echo "You entered three."
else
    echo "You did not enter a number between 1 and 3"
fi
