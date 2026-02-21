if cmp -s "$1" "$2";
then
rm "$2"
echo "Files are identical and $2 is deleted"
else
echo "Files are not identical and No action taken"
fi