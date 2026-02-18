echo "Enter the number"
read n
x=0
y=1
i=2
echo "Fibonacci series upto $n terms"
echo "$x"
echo "$y"
while [ $i -lt $n ]
do
    z=`expr $x + $y`
    echo "$z"
    x=$y
    y=$z
    i=`expr $i + 1`
done