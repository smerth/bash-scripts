#! /bin/bash

# this uses the output of ls as a series of things for the i to loop through
for i in $(ls)
do
	echo "$i"
done