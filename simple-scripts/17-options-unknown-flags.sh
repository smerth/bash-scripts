#! /bin/bash
# this is a basic bash script

# added a colon before the flag list
while getopts :u:p:ab option; do
	case $option in
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
		a) echo "Got the A flag";;
		b) echo "Got the B flag";;
		?) echo "I don't know what $OPTARG is...";;
	esac
done

echo "User: $user / Pass: $pass"