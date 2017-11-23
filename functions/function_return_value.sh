#!/bin/bash

# Example 1:
# =========

print_value() {
    echo Hello $1
    echo
    return 5
}

print_value Lundi
print_value Mardi
echo "The previous function has a return value of $?"
echo

# Example 2:
# =========

lines_in_file () {
    cat $1 | wc -l
}

num_lines=$(lines_in_file $1)

echo "the file $1 has $num_lines lines in it."
