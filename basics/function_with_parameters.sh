#!/bin/bash

# Example 1:
# =========
function fun {
    echo "Reading the first parameter of function: $1"
    echo
}

fun "parameter1"

# Example 2:
# =========

print_something() {
    echo Hello $1
    echo
}

print_something Mars
print_something Jupiter

