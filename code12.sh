#!/bin/bash
echo "Enter two postive integers:"
read a b
m=$a
if [ $b -lt $m ] 
	then
	m=$b
fi
while [ $m -ne 0 ]
do
	x=`expr "scale=0; $a % $m"| bc`
	y=`expr "scale=0; $b % $m"| bc`
	if [ $x -eq 0 -a $y -eq 0 ]
	then
	echo "GCD of $a and $b is $m"
	break
	fi
	m=`expr "scale=0; $m - 1"| bc`
done
