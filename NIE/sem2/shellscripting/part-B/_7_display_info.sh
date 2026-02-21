while true
do
    echo "1. Version of the Shell"
    echo "2. The User Information"
    echo "3. Login Date and Time"
    echo "4. Processes running on the system"
    echo "5. User home directory"
    echo "Press q to quit"
    echo "Enter your choice"
    read ch
    case $ch in
        1) echo "1. Version of the Shell"
        uname -r;;
        2) echo "2. The User Information"
        who;;
        3) echo "3. Login Date and Time"
        date;;
        4) echo "4. Processes running on the system"
        ps;;
        5) echo "5. User home directory"
        pwd;;
        q) break;;
        *) echo "Invalid Option"
    esac
done