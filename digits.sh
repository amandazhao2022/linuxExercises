#!/bin/bash

sum=0

for i in {1000..2000}
do d1=$(($i%1000%100%10))
   if [[ (($d1 -eq 1) || ($d1 -eq 0)) ]]
   then
       echo $i
       d2=$(($i%1000%100/10))
       if [[ (($d2 -eq 1) || ($d2 -eq 0)) ]]
       then
	   d3=$(($i%1000/100))
	   if [[ (($d3 -eq 1) || ($d3 -eq 0)) ]]
	   then
	       d4=$(($i/1000))
	       if [[ ($d4 -eq 1) ]]
	       then
		   sum=$(($sum+$i))
	       fi

done
echo $sum
