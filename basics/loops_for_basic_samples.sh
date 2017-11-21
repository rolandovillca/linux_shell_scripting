#!/bin/bash

# Example 1:
# =========

LIMIT=10

for ((i=0; i<$LIMIT; i++)); do
    echo "$i"
done

# Example 2:
# =========
echo "----------"

for i in 100 200 300 400 500 600 700 800 900; do
    echo "$i"
done

# Example 3:
# =========
echo "----------"

CMD="ls /tmp"

for i in $($CMD); do
    echo "$i"
done

# Example 4:
# =========
echo "----------"

for word in word1 word2 word3 word4 word5; do
    echo $word
done

