#!/bin/bash -x

echo "Input the array size: "
read n

for((i=0;i<n;i++))
do
	value=$((100+((RANDOM%900))))
	nos[$i]=$value
done

echo ${nos[@]}

for ((i=0;i<n;i++))
do

    for((j=0;j<n-i-1;j++))
    do

        if [ ${nos[j]} -gt ${nos[$((j+1))]} ]
        then
            # swap
            temp=${nos[j]}
            nos[$j]=${nos[$((j+1))]}
            nos[$((j+1))]=$temp
        fi
    done
done

echo ${nos[@]}

min=${nos[0]}
max=${nos[$n-1]}
min2=${nos[1]}
max2=${nos[$n-2]}

echo "Min value: $min"
echo "Min2 value: $min2"
echo "Max value: $max"
echo "Max2 value: $max2"
