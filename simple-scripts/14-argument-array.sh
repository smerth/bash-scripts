#! /bin/bash
# this is a basic bash script

for i in $@
do
	echo $i
done

echo "There were $# arguments."