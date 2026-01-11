#!/bin/bash

echo "Enter a number to generate multiplication table of it"
read n

for (( i=1 ; i<=10 ; i++))
do
    echo "$n X $i = $((n*i))"
done
