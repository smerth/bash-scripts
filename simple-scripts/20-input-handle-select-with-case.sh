#! /bin/bash
# this is a basic bash script

#! /bin/bash
# this is a basic bash script

# "select" is followed by the "variable name" you want to store the selection in folloed by the word "in"
select option in "cat" "dog" "bird" "cucumber" "quit"

do
	case $option in
		cat) echo "But cats are selfish and loathsome. 😿";;
		dog) echo "Your answer is consistant with above average intelligence. 👍🏻";;
		bird) echo "We have tweeted your response to your employer! 🗣";;
		cucumber) echo "hmmmm.... 💩";;
		quit) break;;
		*) echo "I'm not sure what that input means,... unless... maybe you are a HAACCKKKER!!!"
	esac
done