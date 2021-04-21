#!/bin/bash
#Kyle Hicks 10403615

#   run grep util to process the file and returning only lines with <td> indicate a table detail row, i.e. contains data
#   use sed to strip out remaining html (table) data
#   pipe the remaining data to awk and calculate the total of the three values as 2nd 3rd and 4th fields
#   output the attack type and corresponding total

 cat attacks.html | grep '<td>'|
sed -e 's/<tr>/ /g'\
    -e 's/<\/tr>/ /g'\
    -e 's/<\/td>/ /g'\
    -e 's/<td>/ /g'| awk 'BEGIN {FS=" "; printf "%-10s %-20s \n", "Attacks", "Instances(Q3)"}
    {total=$2+$3+$4; 
     printf "%-10s %-20s \n", $1, total}
    END{}'

exit 0