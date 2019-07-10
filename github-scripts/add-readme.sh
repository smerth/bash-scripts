#! /bin/bash

# This script adds a "README.md" file to a Github repository

# TO RUN THE SCRIPT
# . add-readme.sh GITHUB-USER-NAME REPOSITORY-NAME
# you must run this script with "." not "bash" (that sets the path context)

# Icons
PIG='\U1F437'
GLOBE='\U1F30E\n'

# Get current date in variable
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

echo ---
printf $ICON
echo : Respository Cloned to $DIRECTORY
echo ---

# cd into repo
cd $DIRECTORY

echo ---
printf $ICON
echo : Adding README.md file to repository
echo ---

# Add README file with repo title
echo -e "# $REPOSITORY\n" >> README.md
echo -e "" >> README.md
echo -e "## ToDo List\n" >> README.md
echo -e "- Write this readme file!!!\n" >> README.md

echo ---
printf $ICON
echo : Committing change to Github
echo ---

# commit change to github
git add . && git commit -m "added README.md" && git push -u origin master

echo ---
printf $ICON
echo : Changes committed and pushed with message - "added README.md"
echo ---

cd ../

echo ---
printf $ICON
echo : Deleting $DIRECTORY
echo ---

rm -fr "$DIRECTORY"

echo ---
printf "You are here " 
printf $GLOBE
echo Visit your repository here: $REPOPATH
echo ---