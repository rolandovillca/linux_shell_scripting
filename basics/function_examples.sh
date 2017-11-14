#!/bin/bash

# Define constants:
TITLE="System information for system $HOSTNAME"
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by user $USER"

# Create a function in one line:
system_info(){ echo "System Info is Not implemented yet"; }

# Create a function with java format:
show_uptime(){
    echo "System uptime:"
    uptime
}

# Create a function as reference format:
function drive_space
{
    echo "Filesystem space:"
    df
}

# Create a function with C# format:
home_space()
{
    echo "Home directory space by user, bytes directory:"
    du -s /home/* | sort -nr
}

echo "$TITLE"
echo "$TIME_STAMP"

echo -e "$(system_info)\n"
echo -e "$(show_uptime)\n"
echo -e "$(drive_space)\n"
echo -e "$(home_space)\n"
