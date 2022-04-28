#!bin/bash
clear
i=0
while [ $i -lt 20 ]  #Using a while loop to enter random integers into an array
do
	num=$(($RANDOM%99))
	array[$i]=$num
	let i++
done

echo "Unsorted: "
echo "${array[*]}"  #Printing the array before being sorted

for i in $(seq 0 19)  #Iterating through the indexes
do
	for ((j=((i+1)); j<=19; j++))  #Using another loop to compare the number ahead
	do	
		if [ ${array[i]} -lt ${array[j]} ] #Comparing the numbers 
		then
			temp=${array[i]} #Rearranging the numbers
			array[i]=${array[j]}
			array[j]=$temp
		fi
	done
done

echo "Sorted: " #Printing the sorted array
echo "${array[*]}"
