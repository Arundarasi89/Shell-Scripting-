#!/bin/bash
arr=( 1 2 3 4 5 )
echo -n "Enter the total numbers:"
read n
echo "enter numbers:"
i=0
while [ $i -lt $n ]
do
	read a[$i]
	i=`expr $i + 1`
done
echo "output"
i=0
while [ $i -lt $n ]
do
	echo ${a[$i]}
	i=`expr $i + 1`
done

