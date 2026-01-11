#!/bin/bash

# Factorial of a number

echo "Enter a number to find factorial of it"
read num
fact=1
for ((i=1 ; i<=num ; i++))
do
    fact=$((fact*i))
done
echo "Factorial of $num is $fact"