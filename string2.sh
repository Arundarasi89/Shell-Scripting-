#!/bin/bash
choice=y
while [ "$choice"="$y" ]
do
echo "1.Compare two strings"
echo "2.Join two strings"
echo "3.Find the length of a given string"
echo "4.Occurrence of character and words"
echo "5.Reverse the string"
echo "6.Exit"
echo "Enter your choice:"
read ch
case $ch in
1)
	echo "Enter string 1: \c"
	read str1
	echo "Enter string 2: \c"
	read str2
	if [ $str1 = $str2 ]
	then
		echo "string is equal"
	else
		echo "string is not equal"
	fi
	;;
2)
	echo "Enter string 1: \c"
	read str1
	echo "Enter string 2: \c"
	read str2
	str3=$str1$str2
	echo "Joined string: $str3"
	;;
3)
	len=0
	echo "Enter string 1: \c"
	read str1
	len=$(echo "$str1"| wc-c)
	len=`expr $len - 1`
	echo "length: $len"
	;;
4)
	echo "Enter string: \c"
	read str
	echo "Enter word to find: \c"
	read word
	echo $str| cat > str1.txt
	grep -o $word str1.txt| cat > str2.txt
	count=`grep -c $word str2.txt`
	echo "count: $count"
	;;
5)
	echo "Enter string 1: \c"
	read str
	len=`expr $str| wc-c`
	len=`expr $len - 1`
	while [ $len -gt 0 ]
	do
		rev=`expr $str| cut -c $len`
		ans=$ans$rev
		len=`expr $len - 1`
	done
	echo "Reverse string: $ans"
	;;
6)		exit ;;

*)	echo "Invalid choice"   
	easc
	echo "Do you want to continue: [y/n]"
	read choice
	case $choice in
Y|y)	choice=y;;
N|n)	choice=n;;
*)	choice=y;;
easc
done





