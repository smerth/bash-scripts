#! /bin/bash

a="dog"
case $a in
	cat) echo "Feline";;
	dog|puppy) echo "Canine";;
	*) echo "No Match!";;
esac