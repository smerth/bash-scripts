#! /bin/bash
# this is a basic bash script

while getopts u:p:ab option; do
	case $option in
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
		a) echo "Got the A flag";;
		b) echo "Got the B flag";;
	esac
done

echo "User: $user / Pass: $pass"