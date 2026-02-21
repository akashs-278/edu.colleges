for file in *
do
    if [ -f "$file" ]
    then
        # if [ -r "$file" -a -w "$file" -a -x "$file"]
        # as usual no output/ not displaying files name
        if [ -r "$file" -a -w "$file" ]
        then
            ls -l "$file"
        fi
    fi
done