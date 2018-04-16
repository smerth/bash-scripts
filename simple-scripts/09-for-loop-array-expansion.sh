#! /bin/bash

# set up an array
arr=("apple" "banana" "cherry")
# use array expansion ${arr[@]} to loop through the array
for i in ${arr[@]}
do
	echo $i
done