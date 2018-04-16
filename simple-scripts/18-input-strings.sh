#! /bin/bash
# this is a basic bash script

echo "What is your good name?"
read name

# -s stands for silent the input won't be shown in terminal
echo "What is your preferred password?"
read -s pass

# you can write everything on the same line with -p for prompt
read -p "What's your favorite type of camel?" camel

echo name: $name, pass: $pass, camel: $camel