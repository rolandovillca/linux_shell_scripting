#!/bin/bash

myfunc()
{
    echo "This function was called as: $@"
    x=2
}

### Main script starts here:

echo "This script was called with $@"
x=1
echo "Before calling the function, x is $x"
echo

myfunc 1 2 3
echo "After calling the function, x is $x"
