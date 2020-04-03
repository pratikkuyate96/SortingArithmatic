#!/bin/bash

#Declaration of dictionary
declare -A expResultDict

#Compute the expressions
function compute() {
	resultExp1=`echo "scale=2; $(($a + $b * $c ))" | bc`
	resultExp2=`echo "scale=2; $(($a * $b + $c ))" | bc`
	resultExp3=`echo "scale=2; $(($c + $a / $b ))" | bc`
	resultExp4=`echo "scale=2; $(($a % $b + $c ))" | bc`
}

#Store result in dictionary
function dictionary() {
	expResultDict[exp1]=$resultExp1
	expResultDict[exp2]=$resultExp2
	expResultDict[exp3]=$resultExp3
	expResultDict[exp4]=$resultExp4
}

function array() {
	for(( number=1; number<=4; number++ ))
	do
		expResultArray[$number]={expResultDict[Expression$number]}
	done
}

function arithmaticComputation() {
	compute
	dictionary
	array
}

#Read value a, b, c
read -p "Enter three value : " a b c
echo "Three values are : " $a $b $c
arithmaticComputation
