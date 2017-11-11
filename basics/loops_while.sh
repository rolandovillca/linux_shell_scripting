#!/bin/bash

num=0

# If number has a value less than 10
while [ "$num" -lt 10 ]; do
    echo "$num"
    num=$((num + 1))
done
