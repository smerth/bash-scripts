#! /bin/bash

read -p "Favorite animal? " a
while [[ -z "$a" ]]; do
	read -p "I need an answer! " a
done
echo "$a was selected."