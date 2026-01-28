echo "Enter the first number "
read a
echo "Enter the second number "
read b
sum=`expr $a + $b`
echo "sum of $a and $b is $sum."
diff=`expr $a - $b`
echo "difference of $a and $b is $diff."
prod=`expr $a \* $b`
echo "product of $a and $b is $prod."
div=`expr $a / $b`
echo "Dividing $a and $b is $div."