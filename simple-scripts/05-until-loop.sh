#! /bin/bash
i=0
until [ $i -ge 10 ]; do
	echo i:$i
	((i+=1))
done