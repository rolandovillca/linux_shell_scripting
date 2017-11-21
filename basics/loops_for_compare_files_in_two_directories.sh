#!/bin/bash

# This one compares the files in two directories and lists
# which files in the first directory are missing from the second.

# cmp_dir - program to compare two directories

# Check for required arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 directory_1 directory_2" 1>&2
    #exit 1
fi

# Make sure both arguments are directories:
if [ ! -d $1 ]; then
    echo "$1 is not a directory!" 1>&2
    #exit 1
fi

if [ ! -d $2 ]; then
    echo "$2 is not a directory!" 1>&2
fi

# Process each file in directory_1, comparing it to directory_2
missing=0
for filename in $1/*; do
    fn=$(basename "$filename")
    if [ -f "$filename" ]; then
        if [ ! -f "$2/$fn" ]; then
            echo "$fn is missing from $2"
            missing=$((missing+1))
        fi
    fi
done

echo "$missing files missing"
