#!/bin/bash
array=( apple bat cat dog elephant frog )
echo ${array[0]}
echo ${array:0}

echo ${array[@]}
echo ${array[@]:0}

echo ${array[@]:1}

echo ${array[@]:1:4}

echo ${#array[*]}
echo ${#array[@]}

echo ${array[@]//a/A}

exit 0

