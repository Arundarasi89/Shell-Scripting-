#!/bin/bash
echo "Enter value of a:" 
read a
echo "Enter value of b:" 
read b
echo "1.Add"
echo "2.Subtract"
echo "3.Multiply"
echo "4.Divide"
echo "5.Modulus"
echo "Enter your choice:" 
read ch
if[ $ch = "1" ]
then
	add=`expr "scale=2; $a + $b"| bc`
	echo "add: $add"
else
	echo "invalid choice"
fi
