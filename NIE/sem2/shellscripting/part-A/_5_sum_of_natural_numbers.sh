#!/bin/bash

# sum of first 10 natural numbers

n=10
i=0
sum=0
while (( i <= n ))
do
    sum=$((sum+i))
    #let i++ wouldn't work here
    ((i++))
done
echo "Sum of first 10 natural numbers is $sum"
