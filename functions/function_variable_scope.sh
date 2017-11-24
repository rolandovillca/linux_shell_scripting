#!/bin/bash

# Scope refers to which parts of a script can see which variables.
# By default a variable is global.
# This means that it is visible everywhere in the script.
# We may also create a variable as a local variable.
# When we create a local variable within a function, it is only visible within that function.
# To do that we use the keyword local in front of the variable the first time we set it's value.

var_change () {
    local var1='local 1'
    echo "Inside function: var1 is $var1 : var2 is $var2"
    var1="1 changed again"
    var2="2 changed again"
}

var1="global 1"
var2="global 2"

echo "Before function call: var1 is $var1 : var2 is $var2"

# Calling the function:
var_change

echo "After function call: var1 is $var1 : var2 is $var2"

# BEST PRACTICE:
# Always use local variables within functions.
# Use global variables as a last resort and
# consider if there is a better way to do it before using them.
