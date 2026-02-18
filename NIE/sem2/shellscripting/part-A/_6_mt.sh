echo "Enter a numeber to generate multiplication table of it"
read num
i=1
while [ $i -le 10 ]
do
    res=`expr $num \* $i`
    echo "$num * $i = $res"
    i=`expr $i + 1`
done
