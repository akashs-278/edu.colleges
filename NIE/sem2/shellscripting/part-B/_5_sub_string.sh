echo "Enter a string"
read inputstr
echo "Enter the starting position fot substring"
read startpos
echo "Enter the number of character(s) to extract"
read len
subst=`expr substr $inputstr $startpos $len`
echo "Substring in a given string is '$subst'"