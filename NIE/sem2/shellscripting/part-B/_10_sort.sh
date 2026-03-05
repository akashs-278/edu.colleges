echo "Create a file with three columns"
echo "Name MiddleName Age"
echo
echo "Enter the filename"
read file
cat > $file
while true
do
echo "1. To Sort the first name in alphabetical order"
echo "2. To Sort the age in terms of ascending order"
echo "3. To Sort the age in terms of descending order"
echo "4. To Sort the middle name in alphabetical order"
echo "Press q to quit"
echo "Enter your choice"
read ch
case $ch in
1) sort $file
;;
2) sort +2 -3 $file
;;
3) sort +2 -3 -r $file
;;
4) sort +1 -2 $file
;;
q) break
;;
*) echo "Invalid Option"
;;
esac
done