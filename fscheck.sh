#!/bin/bash
#Kyle Hicks 10403615

# a function which retrieves data about a file (unvalidated)
getprop()
{
    #get the file's word count 
    w_count=$(wc -w "$1" | awk '{print $1}')
    
    #get the file size in kilobytes
    size=$(wc -c "$1" | awk '{print $1}')

    #get the last datetime the file was modified
    lst_mod=$(date -r $1 "+%m-%d-%Y %H:%M:%S")

    #echo the required output to the terminal
    echo -e "The file $1 contains $w_count words and is $size \bK in size and was last modified $lst_mod"
}

# get a file name from he user
read -p "Please provide a file name: " file

# pass the filename to the function
getprop $file

exit 0