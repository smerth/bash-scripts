#! /bin/bash

# This script takes in a repo name and user account name
# clones the repo
# moves the readme.md file to the outside directory
# commits the changes and pushes to github
# moves the readme.md back to the repo renamed as README.md
# commits the changes and pushes to github
# deletes the old readme.md file

# TO RUN THE SCRIPT
# . readme-to-README.sh YOUR-GITHUB-USER-NAME YOUR-REPO-NAME
# you must run this script with . not bash
# that sets the path context so you can change directories
# for example
# . readme-to-README.sh smerth bash-scripts

USER=$1
DIRECTORY=$2
REPOPATH=https://github.com/$USER/$DIRECTORY.git

# Clone the repo
git clone $REPOPATH

# cd into repo
cd $DIRECTORY

# Add README file with repo title
echo -e "# $DIRECTORY\n" >> README.md
echo -e "" >> README.md
echo -e "## ToDo\n" >> README.md
echo -e "- Wrtie this redme file!!!\n" >> README.md

# commit change to github
git add . && git commit -m "added README.md" && git push -u origin master

cd ../

rm -fr "$DIRECTORY"
