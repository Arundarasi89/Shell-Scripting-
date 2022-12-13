#!/bin/bash
echo "Enter a positive number to find factorial:"
read n
s=1
fact=1
for (( i=$s; i<=$n; i++ )) 
do
	fact=`expr "scale=2; $fact * $i"| bc`
done
echo "factorial of $n is $fact"

