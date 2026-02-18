echo "enter the number : "
read n
rem=`expr $n % 2 `
if [ $rem -eq 0 ]
then
echo "$n is even number."
else
echo "$n is odd number."
fi