#!/bin/bash

echo "Welcome to computation problem"

read -p "Enter first number: " a;
read -p "Enter second number: " b;
read -p "Enter third number: " c;

first_computation=`echo - | awk '{printf "%.2f\n",'$a+$b*$c'}'`
echo $first_computation

second_computation=`echo - | awk '{printf "%.2f\n",'$a*$b+$c'}'`
echo $second_computation

third_computation=`echo - | awk '{printf "%.2f\n",'$c+$a/$b'}'`
echo $third_computation

