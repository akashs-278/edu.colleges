#!/bin/bash

# Even or Odd checking
echo "Enter a number to check Even or Odd"
read num


if [[ num%2 -eq 0 ]]
then
    echo "$num is Even Number"
else
    echo "$num is Odd Number"
fi