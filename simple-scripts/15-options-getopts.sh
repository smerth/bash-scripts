#! /bin/bash
# this is a basic bash script

while getopts u:p: option; do
	case $option in
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
	esac
done

echo "User: $user / Pass: $pass"