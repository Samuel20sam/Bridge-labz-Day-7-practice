#!/bin/bash -x

echo "Type in the number: "
read n
num=$n

a=-1

for (( i=2; i<=$n; i++ ))
do
	echo "Incremented i is: "$i
	while [ $((num%$i)) == 0 ]
	do
		((a++))
		echo "Prime factor is: "$i
		prime[$a]=$i
		num=$((num/$i))
		echo "Divided num is: "$num
	done
done
echo "Prime numbers of $n are: "${prime[*]}
