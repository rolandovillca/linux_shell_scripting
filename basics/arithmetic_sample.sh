#!/bin/bash

num1=0
num2=0

echo -n "First num: "
read num1
echo -n "Second num: "
read num2

echo " "
echo "The sum is: $((num1 + num2))"
echo "The rest is: $((num1 - num2))"
echo "The multiplication is: $((num1 * num2))"
echo "The division is: $((num1 / num2))"
