#!/bin/bash

interactive=
filename="myfilename.txt"

function usage {
    echo "usage: information [[[-f file][-i]] | [-h]]"
}

while [ "$1" != "" ]; do
    case $1 in
        -f | --file )
	    shift
	    filename=$1
	    ;;
	-i | --interactive )
            interative=1
	    ;;
	-h | --help )
	    usage
	    #exit
	    ;;
	* )
	    usage
	    #exit 1
	esac
	shift
done

if [ "$interactive" = "1" ]; then
    response=

    echo -n "Enter name of output filename [$filename] > "
    response
    if [ -n "$response" ]; then
        filename=$response
    fi

    if [ -f $filename ]; then
        echo -n "Output file exists, do you want to overwrite? (y/n) > "
        read response
        if [ "$response" != "y" ]; then
            echo "Exiting program."
            exit 1
        fi
    fi
fi
