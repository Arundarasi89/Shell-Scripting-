#!/bin/bash
echo "Enter two numbers:"
read a b
echo "1.Add"
echo "2.Subtract"
echo "3.Multiply"
echo "4.Divide"
echo "5.Modulus"
echo "Enter your choice:"
read n
if [ $n == 1 ]
	then
	add=`expr "scale=2; $a + $b"| bc`
	echo "add : $add"
elif [ $n == 2 ]
	then
	sub=`expr "scale=2; $a - $b"| bc`
	echo "sub : $sub"
elif [ $n == 3 ]
	then
	mul=`expr "scale=2; $a * $b"| bc`
	echo "mul : $mul"
elif [ $n == 4 ]
	then
	div=`expr "scale=2; $a / $b"| bc`
	echo "div : $div"
else
	mod=`expr "scale=2; $a % $b"| bc`
	echo "mod : $mod"
fi
	
