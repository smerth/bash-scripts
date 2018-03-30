#! /bin/bash

# Run the output of the list (ls) command through a function to generate a numbered list of files and folders


function numberthings {
	# set counter to 1
	i=1
	# use the array variable that represents all th arguments passed to a function
	for f in $@; do
		echo $i: $f
		((i+=1))
	done

}

# Call the function shell expansion to pass in the results of ls
numberthings $(ls)