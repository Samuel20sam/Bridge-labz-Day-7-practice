#!/bin/bash -x

for((i=0;i<=10;i++))
do
	value=$((100+((RANDOM%900))))
	nos[$i]=$value
done

min=${nos[0]}
max=${nos[0]}

for((i=0;i<=10;i++))
do
	if [ ${nos[$i]} -lt $min ];
	then
		min=${nos[$i]}

	elif [ ${nos[$i]} -gt $max ];
	then
		max=${nos[$i]}
	fi
done

a=$min
b=$max
min2=${nos[0]}
max2=${nos[0]}

for((i=0;i<=10;i++))
do
	if [[ (${nos[$i]} -lt $min2) && (${nos[$i]} -gt $a) ]];
	then
		min2=${nos[$i]}

	elif [[ (${nos[$i]} -gt $max2) && (${nos[$i]} -lt $b) ]];
	then
		max2=${nos[$i]}
	fi
done

echo "The random numbers are: " ${nos[@]}
echo "Min value: $min"
echo "Min2 value: $min2"
echo "Max value: $max"
echo "Max2 value: $max2"
