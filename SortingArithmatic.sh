#!/bin/bash -x

#Declaration of dictionary and array
declare -A expResultDict
declare -a expResultArray

#Compute the expressions
function computation() {
	resultExp1=$"$a + $b * $c"
	resultExp2=$"$a * $b + $c"
	resultExp3=$"$c + $a / $b"
	resultExp4=$"a % $b + $c"
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
		expResultArray[$number]={expResultDict[exp$number]}
	done
}

#Sort the result of array
function sortResultOfArray() {
	for (( number=1; number<=4; number++ ))
	do
		echo ${expResultArray[$number]}
	done | sort $1
}

function arithmaticComputation() {
	computation
	dictionary
	array
	echo "Descending order:"
	sortResultOfArray -rn
	echo "Ascending order:"
	sortResultOfArray -n
}

#Read value a, b, c
read -p "Enter three value : " a b c
echo "Three values are : " $a $b $c
arithmaticComputation
