#!/bin/bash -x

#Read value a, b, c
read -p "Enter three values : " a b c
echo "Three values are : " $a $b $c

#Compute addtion and multiplication
resultExp1=$(( a + b * c ))
echo "Result 1 : "$resultExp1

#Compute multiplication and addition
resultExp2=$(( a * b + c ))
echo "Result 2 : "$resultExp2
