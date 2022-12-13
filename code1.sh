#!/bin/bash
echo "Find Area of..."
echo "1.Triangle"
echo "2.Square"
echo "3.Rectangle"
echo "4.Circle"
echo "Enter your choice"
read ch
if [ $ch == 1 ]
	then
	echo "Enter base and height of triangle:"
	read b h
	tri=`expr "scale=2; 0.5 * $b * $h"| bc`
	echo "Area of triangle is $tri"
elif [ $ch == 2 ]
	then
	echo "Enter length of one side of square:"
	read a
	squ=`expr "scale=2; $a * $a"| bc`
	echo "Area of square is $squ"
elif [ $ch == 3 ]
	then
	echo "Enter width and height of rectangle:"
	read w h
	rec=`expr "scale=2; $w * $h"| bc`
	echo "Area of rectangle is $rec"
elif [ $ch == 4 ]
	then
	echo "Enter radius of circle:"
	read r
	cir=`expr "scale=2; $r * 3.14"| bc`
	echo "Area of circle is $cir"
else
	echo "invalid choice"
fi
