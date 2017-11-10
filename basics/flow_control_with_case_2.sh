#!/bin/bash

echo -n "Type a digit or a letter: "
read var

case $var in
                                # Check for letters
    [[:lower:]] | [[:upper:]] ) echo "You typed the letter $var" ;;
                                # Check for digits
                        [0-9] ) echo "You typed the digit $var" ;;
                                # Check for anything else
                            * ) echo "You did not type a letter or a digit"
esac
