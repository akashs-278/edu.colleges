declare -a ae
echo "Enter array elements"
read ae
echo "Enter search num : "
read search
for i in ${ae[@]}
do
    if [ $i == $search ]
    then
        echo "Element $search is found"
        exit 0
    fi
done
echo "Element $search is not found"