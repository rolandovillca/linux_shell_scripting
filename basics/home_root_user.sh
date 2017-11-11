#!/bin/bash

function home_space
{
    #Only the superuser can get this information

    if [ "$(id -u)" = "0" ]; then
        echo "Home directory space by user"
        echo "----------"
        echo "Bytes directory"

        du -s /home/* | sort -nr

        echo "----------"
    fi
}
