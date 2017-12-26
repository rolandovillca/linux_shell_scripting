#!/bin/bash

###################
# I/O REDIRECTIONS:
###################

# There are always three default files open:
# 1. stdin (the keyboard)
# 2. stdout (the screen)
# 3. stderr (error messages output to the screen)
#
# These and any other open files can be redirected.
#
# Redirections means capturing output from a file, command, program,
# script, or even code block within a script and sending it as input
# to another file, command, program, or script.

# Example 1: Redirect stdout to a file:
ls -l > ls_output.txt
# Creates a file if no present, otherwise overwrites it.

# Example 2: Redirect stderr to a file:
grep da * 2> grep_errors.txt

# Example 3: Redirect stdout to stderr:
grep da * 1>&2

# Example 4: Redirect stderr to stdout:
grep * 2>&1

# Example 5: Redirect stderr and stdout to a file:
rm -f $(find / -name core) &> /dev/null
