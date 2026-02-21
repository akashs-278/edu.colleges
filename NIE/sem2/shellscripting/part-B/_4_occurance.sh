echo "Enter the filename"
read fname
echo "Enter the word"
read word
wcount=$(grep -o -w $word $fname | wc -w )
echo "The word '$word' occured $wcount time (s) in the file '$fname'"