#!/bin/bash

echo "Welcome to computation problem"

read -p "Enter first number: " a;
read -p "Enter second number: " b;
read -p "Enter third number: " c;

first_computation=`echo - | awk '{printf "%.2f\n",'$a+$b*$c'}'`

second_computation=`echo - | awk '{printf "%.2f\n",'$a*$b+$c'}'`

third_computation=`echo - | awk '{printf "%.2f\n",'$c+$a/$b'}'`

fourth_computation=`echo - | awk '{printf "%.2f\n",'$a%$b+$c'}'`

declare -A computation
computation[[a+b*c]]=$first_computation
computation[[a*b+c]]=$second_computation
computation[[c+a/b]]=$third_computation
computation[[a%b+c]]=$fourth_computation

for i in ${!computation[@]}
do
	echo $i " : " ${computation[$i]}
done

counter=1
for k in ${!computation[@]}
do
	computation_array[counter++]=${computation[$k]}
done
echo ${computation_array[@]}
