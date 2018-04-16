#! /bin/bash
# this is a basic bash script

# "select" is followed by the "variable name" you want to store the selection in folloed by the word "in"
select animal in "cat" "dog" "bird" "cucumber"

do
	echo "You selected $animal!"
	#remember to break out of the loop
	break
done