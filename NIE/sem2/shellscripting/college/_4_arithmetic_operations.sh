echo "Enter 2 numbers : "
read a b
sum=`expr $a + $b`
echo "sum of $a and $b is $sum."
diff=`expr $a - $b`
echo "difference between $a and $b is $diff."
mul=`expr $a \* $b`
echo "product of $a and $b is $mul."
div=`expr $a / $b`
echo "Dividing $a and $b is $div."