#!/bin/bash

num1=0
num2=0

echo -n "First num: "
read num1
echo -n "Second num: "
read num2

echo " "
echo "The result of $num1 + $num2 = $((num1 + num2))"
echo "The result of $num1 - $num2 = $((num1 - num2))"
echo "The result of $num1 * $num2 = $((num1 * num2))"
echo "The result of $num1 / $num2 = $((num1 / num2))"
echo "The result of $num1 % $num2 = $((num1 % num2))"
echo "The result of $num1 ^ $num2 = $((num1 ** num2))"
