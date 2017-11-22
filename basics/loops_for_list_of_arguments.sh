#!/bin/bash

# The shell variable "$@" contains the list of command line arguments.
# This technique is often used to process a list of files on the command line.

echo $@

for filename in "$@"; do
    result=
    if [ -f "$filename" ]; then
        result="The $filename is a regular file"
    else
        if [ -d "$filename" ]; then
            result="The $filename is a directory"
        fi
    fi
    if [ -w "$filename" ]; then
        result="$result and it is writable"
    else
        result="$result and it is not writable"
    fi

    "echo $result"
done
