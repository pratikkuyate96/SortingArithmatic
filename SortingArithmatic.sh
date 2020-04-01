#!/bin/bash -x

read -p "Enter three values : " a b c
echo "Three values are : " $a $b $c

resultExp1=$(( a + b * c ))
echo "Result : "$resultExp1
