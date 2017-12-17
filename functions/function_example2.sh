#!/bin/bash

# A simple script with a simple function:

add_a_user()
{
    USER=$1
    password=$2
    shift; shift;

    # Having shifted twice, the rest is now comments...
    COMMENTS=$@
    echo "Adding user $USER ..."
    echo useradd -c "$COMMENTS" $USER
    echo passwd $USER $PASSWORD
    echo "Adding user $USER ($COMMENTS) with pass $PASSWORD"
}

###
# Main body of script starts here
###

echo "Staring of script..."
add_a_user bob letmein Bob Holness the presenter
add_a_user fred badpassword Fred Durst the singer
add_a_user bilko worsepassword Bilko the role model
echo "Enf od script..."
