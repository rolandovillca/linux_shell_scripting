#!/bin/bash

file_name="non.existing.file"

# One way to write a code with if statement:

if [ -f $file_name ]
then
    echo "You have a $file_name. Things are fine."
else
    echo "Yikes! You have no $file_name file, worry!!"
fi


# Anotehr way to write code with if statement:

if [ -f $file_name ]
then echo "You have a $file_name. Things are fine."
else echo "Yikes! You have no $file_name file, worry!!"
fi
