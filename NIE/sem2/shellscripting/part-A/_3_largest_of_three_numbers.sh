#!/bin/bash

# largest of three number

echo "Enter three numbers"
read a
read b
read c

if [[ $a > $b ]] && [[ $a > $c ]]
then
    echo "$a is greater"
elif [[ $b > $a ]] && [[ $b > $c ]] 
then
    echo "$b is greater"
else
    echo "$c is greater"
fi