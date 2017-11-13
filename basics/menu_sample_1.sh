#!/bin/bash

selection=

until [ "$selection" = "0" ]; do
    echo "
    PROGRAM MENU
    1 - Display free disk space
    2 - Display free memory

    0 - Exit program"

    echo -n "Enter selection: "
    read selection
    echo " "
    case $selection in 
        1) df ;;
        2) free ;;
        0) kill -9 888 ;;
        *) echo "Please enter 1, 2, or 0"
    esac
done
