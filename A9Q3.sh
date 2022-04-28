#!bin/bash
clear
i=1 #Question 3
for i in $(seq 50) #Creating an array of numbers 1-50
do
	array[i]=$i
done

echo "Array of numbers 1-50" #Displaying the numbers
echo "${array[*]}"

#Question 4
isPrime(){
for((i=2; $i<=${array[i]}/2; i++))
do
	if [ $(${array[i]}%$i)==0 ]
	then
		echo ${array[i]}
	else
		echo "0"
	fi
done
}

echo "Prime numbers"
isPrime ${array[i]}
