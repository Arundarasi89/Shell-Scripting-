#!/bin/bash
echo "Enter number of processes:"
read n
echo "Enter process burst time:"
i=0
while [ $i -lt $n ]
do
	p=`expr $i + 1`
	echo "P$p"
	read a[$i]
	i=`expr $i + 1`
done
wt[0]=0
k=1
j=0
while [ $k -lt $n ]
do
	wt[$k]=0
	while [ $j -lt $k ]
	do
		wt[$k]=`expr ${wt[$k]} + ${bt[$j]}`
		j=`expr $j + 1`
	done
	k=`expr $k + 1`
done
echo "Process      Burst Time      Waiting time      Turnaround time"
s=0

