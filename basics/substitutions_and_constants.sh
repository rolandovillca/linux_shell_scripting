#!/bin/bash

# ASSIGNMENTS:
# ===========
# Assign the result of a command to a variable:
right_now=$(date +"%x %r %Z")

# Nesting variable:
time_stamp="Updated on $right_now by $USER"

# CONSTANTS:
# =========
TITLE="Learning constants for $HOSTNAME"
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"

echo "Title: $TITLE"
echo "Timestamp: $TIME_STAMP"
