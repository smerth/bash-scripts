#! /bin/bash

read -p "Favorite animal? [cat] " a
while [[ -z "$a" ]]; do
	a="cat"
done
echo "$a was selected."