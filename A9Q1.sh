#!bin/bash
clear
i=0
while [ $i -lt 20 ] #Iterating through 20
do
	num=$(($RANDOM%99))  #Setting num equal to a random number
	array[$i]=$num  #Adding the integer to an array
	let i++  #Incrementing I
done

echo "Unsorted: "  #Displaying the unsorted array
echo "${array[*]}"

for i in $(seq 0 19) #Starting at index 0 of the array through 19
do
	for ((j=((i+1)); j<=19; j++)) #Using another for loop for the number 1 ahead of i
	do
		if [ ${array[i]} -gt ${array[j]} ] #Comparing the numbers of the array
		then
			temp=${array[i]} #Rearranging the integers
			array[i]=${array[j]}
			array[j]=$temp
		fi
	done
done
echo "Sorted: "
echo "${array[*]}"  #Printing out the sorted array
