#!/bin/bash
#Kyle Hicks 10403615

# declare two arrays
declare -a ass1
declare -a ass2

# declare two variables to hold each of the assignment scores
ass1score=0
ass2score=0

# populate the arrays
ass1=(12 18 20 10 12 16 15 19 8 11)
ass2=(22 29 30 20 18 24 25 26 29 30)

# store the length of the first array. Not elegant but ok with fixed length arrays in this script example/task
len=${#ass1[*]}

# for the length of the array (as a C Style loop)..
for (( i=0; i<${len}; i++ ));

# get the two assignment scores for each student, sum them and output the total to the screen
do  
    ass1score=${ass1[$i]}
    ass2score=${ass2[$i]}

    score=$(($ass1score+$ass2score))
    student=$(($i+1))

    echo "Student_$student Result: $score"

done

exit 0
