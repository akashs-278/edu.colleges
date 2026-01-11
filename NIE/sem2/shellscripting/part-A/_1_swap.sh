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
let a=$a+$b
let b=$a-$b
let a=$a-$b

echo "After swapping without using temp variable.."
echo "a = $a"
echo "b = $b"