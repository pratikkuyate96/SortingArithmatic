#Read value a, b, c
read -p "Enter three values : " a b c
echo "Three values are : " $a $b $c

#Compute addtion and multiplication
resultExp1=`echo "scale=3; $a + $b * $c" | bc`

#Compute multiplication and addition
resultExp2=`echo "scale=3; $a * $b + $c" | bc`

#Compute addition and substraction
resultExp3=`echo "scale=3; $c + $a / $b" | bc`

#Compute mod and addition
resultExp4=`echo "scale=3; $a % $b + $c" | bc`

#Store result in dictionary
declare -A expResultDict
expResultDict[exp1]=$resultExp1
expResultDict[exp2]=$resultExp2
expResultDict[exp3]=$resultExp3
expResultDict[exp4]=$resultExp4

echo "Show Dictionary"
echo "Keys : ${!expResultDict[@]}"
echo "Value : ${expResultDict[@]}"

#Store dictionary into array value
index=0
for result in ${expResultDict[@]}
do
	expResultArray[((index))]=$result
	((index++))
done

echo "Array" ${expResultArray[@]}
