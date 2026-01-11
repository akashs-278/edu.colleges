#!/bin/bash

# fibonacci series for n number

echo "Enter a numebr"
read num
a=0
b=1
for ((i=0;i<=num;i++))
do
    echo $a
    fs=$((a+b))
    a=$b
    b=$fs
done

