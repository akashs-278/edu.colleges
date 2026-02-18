echo "printing first 10 natural number"
a=1
sum=0
while [ $a -le 10 ]
do
    echo $a
    sum=`expr $sum + $a`
    a=`expr $a + 1`
done
echo "Sum of first 10 natural numbers is $sum"
