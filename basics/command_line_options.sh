#!/bin/bash

interactive=
filename="/home/do_not_existing_file.txt"

usage() {
    echo "Usage: my customized message"
}

while [ "$1" != "" ]; do
    case $1 in
        -f | --file) shift filename=$1 ;;
        -i | --interactive) interactive=1 ;; 
        -h | --help) usage exit ;;
        *) usage exit ;;
    esac
    shift
done
