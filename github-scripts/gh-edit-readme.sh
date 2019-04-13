#! /bin/bash

# This script takes in a repo name and user account name
# and opens the README file in Typora

# TO RUN THE SCRIPT
# . edit-readme.sh YOUR-GITHUB-USER-NAME YOUR-REPO-NAME
# you must run this script with . not bash
# that sets the path context so you can change directories
# for example
# . edit-readme.sh smerth bash-scripts

USER=$1
DIRECTORY=$2
REPOPATH=https://github.com/$USER/$DIRECTORY.git

# Clone the repo
git clone $REPOPATH

# cd into repo
cd $DIRECTORY

m1="commit change to github"
m2='git add . && git commit -m "edited README.md" && git push -u origin master'

echo $m1
echo $m2

open -a typora README.md

# commit change to github
# git add . && git commit -m "edited README.md" && git push -u origin master
