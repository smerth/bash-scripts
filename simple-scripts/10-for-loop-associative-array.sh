#! /bin/bash

# declare -A to set up your associative array
declare -A myarray
myarray["name"]="Mickey"
myarray["id"]="123"
# you use ! to access the keys in the associative array
# the quotes are used in case there are spaces in the strings within the array
for i in "${!myarray[@]}"
do
	# access the value of each key (i)
	echo "$i: ${myarray[$i]}"
done