#!/bin/bash

# swap two values

echo "Enter value for a"
read a
echo "Enter values for b"
read b

# with third variable/temp variable
temp=$a
a=$b
b=$temp

echo "After swapping with using temp variable.."
echo "a = $a"
echo "b = $b"


# without third variable/temp variable
a=$((a+b))
b=$((a-b))
a=$((a-b))

echo "After swapping without using temp variable.."
echo "a = $a"
echo "b = $b"