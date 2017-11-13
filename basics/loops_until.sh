#!/bin/bash

num=0

# If num has a value greater or equal than
until [ "$num" -ge 10 ]; do
    echo "$num"
    num=$((num + 1))
done
