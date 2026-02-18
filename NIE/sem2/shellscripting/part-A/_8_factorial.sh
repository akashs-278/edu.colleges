echo "Enter the number"
read num
fact=1
while [ $num -gt 1 ]
do
    fact=`expr $fact \* $num`
    num=`expr $num - 1`
done
echo "Factorial of the given number is $fact"