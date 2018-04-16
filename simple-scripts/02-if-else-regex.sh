#! /bin/bash

a="This is my string!"

# The =~ indicates a regular expression
# [0-9]+ means one or more digits

if [[ $a =~ [0-9]+ ]]; then
	echo "There are numbers in the string: '$a'"
else
	echo "There are no numbers in the string: '$a'"
fi