#!/bin/bash
echo "Enter array limit:"
read limit
echo "Enter elements:"
n=1
while [ $n -le $limit ]
do
	read num
	eval arr$n=$num
	n=`expr $n + 1`
done
echo "Enter key element:"
read key
low=1
high=$n
found=0
while [ $found -eq 0 -a $high -gt $low ]
do
	avg=`expr  $low + $high`
	mid=`expr $avg / 2`
	eval t=$arr$mid
	if [ $key -eq $t ]
	then
		found=1
	elif [ $key -lt $t ]
	then
		high=`expr $mid - 1`
	else
		low=`expr $mid + 1`
	fi
done
if [ $found -eq 0 ]
then
	echo "Unsuccessful search"
else
	echo "successfull search"
fi
