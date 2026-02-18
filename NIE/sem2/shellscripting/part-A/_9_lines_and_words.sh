echo "Enter the file name"
read file
w=`cat $file | wc -w`
l=`cat $file | wc -l`
echo "Number of words in $file is $w"
echo "Number of lines in $file is $l"