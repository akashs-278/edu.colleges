#!/bin/bash
# name.txt file is for 9th script

# counting lines and words in a file
echo "Enter filename : "
read file

lines=$(wc -l < "$file")
words=$(wc -w < "$file")

# Lines num=n-1
# assume 5=5-1=4

echo
echo "Lines = $lines"
echo "Words = $words"
echo
echo "Content of the file $file is :-"
cat "$file"