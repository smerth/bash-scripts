#! /bin/bash

# This script opens the "README.md" file from a Github repository locally in Typora for a quick edit

# TO RUN THE SCRIPT
# . edit-readme.sh GITHUB-USER-NAME REPOSITORY-NAME
# you must run this script with "." not "bash" (that sets the path context)

# USER=$1
# DIRECTORY=$2
# REPOPATH=https://github.com/$USER/$DIRECTORY.git
# UNICORN='\U1F984\n'
#
# echo $UNICORN
# echo $REPOPATH
#
# # Clone the repo
# git clone $REPOPATH
#
# # cd into repo
# cd $DIRECTORY

# Icons
PIG='\U1F437'
GLOBE='\U1F30E\n'

# Variables
DATE=$(date +"%Y-%m-%d"-"%H:%M")
ICON=$PIG	
USER=$1
REPOSITORY=$2
DIRECTORY=$REPOSITORY-$DATE
REPOPATH=https://github.com/$USER/$REPOSITORY.git

echo ---
echo Date: $DATE
echo Github Account: $USER
echo Github Repository: $REPOSITORY
echo Github Clone Path: $REPOPATH
echo Local Cloned Name: $DIRECTORY
echo ---
printf $ICON 
echo : Cloning Github Repository
echo ---

# Clone the repo
git clone $REPOPATH $DIRECTORY

# cd into repo
cd $DIRECTORY

echo ---
printf $PIG 
printf " To commit your changes to Github:\n"
printf 'git add . && git commit -m "edited README.md" && git push -u origin master\n'
echo ---
printf "You are here: " 
printf $GLOBE
echo Your repository is here: $REPOPATH
echo ---

open -a typora README.md


