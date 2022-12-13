#!/bin/bash
choice=y
while [ "$choice" = "y" ]
do
	echo "1.Compare two strings"
	echo "2.Join two strings"
	echo "3.Find the length of a given string"
	echo "4.Occurence of character and words"
	echo "5.Reverse the string"
	echo "6.Exit"
	echo "Enter choice:"
	read ch
	case $ch in
	1)
	   echo "Enter string 1:\c"
	   read str1
	   echo "Enter string 2:\c"
	   read str2
	   if [ $str1 = $str2 ]
	   then
		echo "String is equal"
	   else
		echo "String is not equal"
	   fi
	   ;;
	2) 
	   echo "Enter string 1:"
	   read str1
	   echo "Enter string 2:"
	   read str2
	   str3=$str1$str2
	   echo "Join string:$str3"
	   ;;
	3) 
	   len=0
	   echo "Enter string 1:"
	   read str1
	   echo "Length: ${#str1}"
	   ;;
	4) 
	   echo "Enter string:"
	   read str
	   echo "Enter word to find:"
	   read word
	   echo $str | cat > str1.txt
	   grep -o $word str1.txt| cat > str2.txt
	   count=`grep -c $word str2.txt`
	   echo "Count: $count"
	   ;;
	5)
	   echo "Enter string 1:"
	   read str
	   len=`expr $str|wc -c`
	   len=`expr $len - 1`
	   while [ $len -gt 0 ]
	   do
		rev=`expr $str|cut -c $len`
		ans=$ans$rev
		len=`expr $len - 1`
	   done
	   echo "Reverse string:$ans"
	   ;;
	*) 
	   echo "Invalid choice"
	   ;;
esac
done

