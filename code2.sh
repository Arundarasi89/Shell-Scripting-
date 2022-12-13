#!/bin/bash
echo "Enter principle amount:"
read p
echo "Enter rate amount:"
read r
echo "Enter time:"
read t
cal=`expr "scale=2; $p * $r * $t"| bc`
si=`expr "scale=2; $cal / 100"| bc`
echo "simple interest: $si"  
