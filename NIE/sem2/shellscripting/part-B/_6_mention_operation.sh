# Operations
# 1. Concatenate 2 strings
# 2. Rename file
# 3. Delete file
# 4. Copy the file

while true
do
    echo "1. Concatenate 2 String"
    echo "2. Rename file"
    echo "3. Delete file"
    echo "4. Copy the file"
    echo "press q to quit"

    echo "Enter your choice"
    read ch

    case $ch in
        1)  echo "Enter the first string"
            read firststring
            echo "Enter the second string"
            read secondstring
            ccstr="$firststring $secondstring"
            echo "Concatenated String is $ccstr";;

        2)  echo "Enter the filename to rename"
            read efile
            echo "Enter new name for $efile"
            read nfile
            mv $efile $nfile
            echo "$efile is renamed to $nfile" ;;

        3)  echo "Enter the filename to delete"
            read rfile
            rm $rfile
            echo "File $rfile is deleted" ;;

        4)  echo "Enter source file"
            read sfile
            echo "Enter Destination file"
            read dfile
            cp $sfile $dfile
            echo "Contents of $sfile copied to $dfile" ;;
        q) break;;
        *)echo "Invalid option";;
    esac
done