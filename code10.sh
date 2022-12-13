#!/bin/bash
echo "Enter a large number:"
read a
rev=0
s=0
or=$a
while [ $a -gt 0 ]
do
	s=`expr "scale=0; $a %10"| bc`
	temp=`expr "scale=0; $rev * 10"| bc`
	rev=`expr "scale=0; $temp + $s"| bc`
	a=`expr "scale=0; $a / 10"| bc`
done
echo "Reverse of $or is $rev"
