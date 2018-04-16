#! /bin/bash

if [ $# -lt 3 ]; then
	cat <<- EOM
	This command requires 3 arguments:
	username, userid, and favorite number.
	EOM
else
	# The program goes here
	echo "Username: $1"
	echo "UserID: $2"
	echo "Favorite Number: $3"
fi