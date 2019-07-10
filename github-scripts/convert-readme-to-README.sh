#! /bin/bash

# This script takes in a repo name, clones the repo, moves the "readme.md" file to the outside directory, commits the changes and pushes to Github.  It then moves the "readme.md" back to the repo, renamed as "README.md", commits the changes and pushes to Github. It then deletes the old readme.md file

# TO RUN THE SCRIPT
# . readme-to-README.sh GITHUB-USER-NAME REPO-NAME
# you must run this script with "." not "bash" that sets the path context

# for example
# . readme-to-README.sh smerth bash-scripts

USER=$1
DIRECTORY=$2
REPOPATH=https://github.com/$USER/$DIRECTORY.git

# Clone the repo
git clone $REPOPATH

# cd into repo
cd $DIRECTORY

# move the readme file out of the repo
mv readme.md ../README.md && echo ">>> removed readme"

# commit change to github
git add . && git commit -m "removed readme.md" && git push -u origin master

# move the README back into repo
mv ../README.md README.md && echo ">>> added back README"

git add . && git commit -m "added back README.md" && git push -u origin master

cd ../

rm -fr "$DIRECTORY"

# rm -fr ~/Desktop/readme/readme.md

# git clone $REPOPATH && mv $DIRECTORY/readme.md ~/Desktop/readme

# git add . && git commit -m "removed readme.md" && git push -u origin master

# mv ~/Desktop/readme/readme.md ./README.md

# git add . && git commit -m "added back README.md" && git push -u origin master
