#!/bn.bash

# More real examples using functions:

home_space() {
    echo "Home directory space by user:"
    format="%8s%10s%10s   %-s\n"
    printf "$format" "Dirs" "Files" "Blocks" "Directory"
    printf "$format" "----" "-----" "------" "---------"
    if [ $(id -u) = "0" ]; then
        dir_list="/home/*"
    else
        dir_list=$HOME
    fi
    for home_dir in $dir_list; do
        total_dirs=$(find $home_dir -type d | wc -l)
        total_files=$(find $home_dir -type f | wc -l)
        total_blocks=$(du -s $home_dir)
        printf "$format" $total_dirs $total_files $total_blocks
    done
}

system_info() {
    # Find any release files in /etc
    if ls /etc/*release 1>/dev/null 2>&1; then
        echo "System release info"
        echo
        for i in /etc/*release; do
            # Since we can't be sure of the
            # length of the file, only
            # display the first line.
            head -n 1 $i
        done
        uname -orp
        echo
    fi
}

#home_space
system_info
