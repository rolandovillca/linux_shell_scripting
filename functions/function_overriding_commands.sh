#!/bin/bash

# It is possible to name a function as the same name as
# a command you would normally use on the command line.
# This allows us to create a wrapper. eg.
# Maybe every time we call the command ls in our script,
# what we actually want is ls -lh. We could do the following:

# Example: create a wrapper around the command ls

function ls {
    command ls -lh
}

ls
