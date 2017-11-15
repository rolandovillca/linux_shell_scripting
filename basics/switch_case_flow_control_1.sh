#!/bin/bash

echo -n "Enter a numbr between 1 and 3: "
read var

case $var in
    1) echo "You entered one."
       ;;
    2) echo "You entered two."
       ;;
    3) echo "You entered three."
       ;;
    *) echo "You did not enter a number between 1 and 3"
esac


# The case command has following pattern
# case WORD in
#    PATTERN ) COMMANDS ;;
# esac
