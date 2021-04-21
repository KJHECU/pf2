#!/bin/bash
#Kyle Hicks 10403615

# uses awk for text processing, field separator has been set to whitespace of any size as it varies in the file
# skip the first line with NR>1
# use regex to determine if the second value (password) in the input is at least 8 characters in length, contains a digit and uppercase character
awk 'BEGIN {FS="[[:space:]]+";}

NR>1 {
    if ($2 ~/[1-9]/&&/[A-Z]/ && length($2) >= 8)
        {
            printf "%-5s %-5s %-5s \n",  $2, "-", "meets password strength requriements";
        }
    else
        {
            printf "%-5s %-5s %-5s \n",  $2, "-", "does NOT meet password strength requriements";
        }
    
     }
END {}' usrpwords.txt

exit 0