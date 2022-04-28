#!bin/bash
clear

count=0
oddSum=0

for i in $(seq 1 2 50) #Creating the odd array by starting at 1 and iterating by 2
do
	oddArray[count]=$i
	let oddSum=oddSum+i #Calculating the sum of the array
	let count++
done

echo "The odd array:" #Displaying the odd array
echo "${oddArray[*]}" 
echo "The odd sum:" #Displaying the sum of the array
echo $oddSum 

count=0
evenSum=0

for i in $(seq 0 2 50) #Creating the even array by starting at 2 and iterating by 2
do
	evenArray[count]=$i 
	let evenSum=evenSum+i #Calculating the sum of the array
	let count++
done

echo "The even array:" #Display the even array
echo "${evenArray[*]}"
echo "The even sum:" #Displaying the sum of the array
echo $evenSum
