#! /usr/local/bin/bash
# This script sets up and configures a create-react-app project

# TODO - collect user input into variables at the beginning:
# Use Flow?
# Use ESLint & Prettier?
# Use Husky?
# Create a Git Repo?
# TODO - break each part of the script into an if statement based on user input

# Get project name from user
echo "What do you want to name your project?"
echo "Name cannot contain spaces or capital letters..."
read -p "Name: " name

# Create the app
echo "***************************"
echo "Creating project $name"
echo "***************************"
create-react-app $name

# cd into app directory
cd $name


# create docs directory, move create-react-app.md file to docs
echo "***************************"
echo "Creating docs folder and readme.md files"
echo "***************************"
mkdir docs && mv README.md docs/create-react-app.md

# make a new project readme.md
touch readme.md

# edit readme
cat <<EOT >> readme.md
# $name
An application based on create-react-app.
## Releases
- Release 1.0.0 - initial setup
EOT


# Add prettier
echo "***************************"
echo "Adding prettier to your project"
echo "***************************"
yarn add --dev prettier

# Add prettier config file
touch .prettierrc

cat <<EOT >> .prettierrc
{
  "printWidth": 100,
  "singleQuote": true
}
EOT

# Add ESLint
echo "***************************"
echo "Adding esLint with eslint-config-airbnb to your project"
echo "***************************"
yarn add --dev eslint eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react

(
  export PKG=eslint-config-airbnb;
  npm info "$PKG@latest" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs npm install --save-dev "$PKG@latest"
)

# Configure esling and prettier
echo "***************************"
echo "Configuring eslint and prettier to work together"
echo "***************************"
yarn add --dev eslint-config-prettier eslint-plugin-prettier

touch .eslintrc.json

cat <<EOT >> .eslintrc.json
{
  "extends": ["airbnb", "prettier"],
  "plugins": ["prettier"],
  "rules": {
    "prettier/prettier": ["error"],
    "react/jsx-filename-extension": [1, { "extensions": [".js", ".jsx"] }]
  },
  "env": {
    "browser": true,
    "commonjs": true,
    "es6": true,
    "node": true,
    "jest": true
  }
}
EOT


echo "***************************"
echo "Initializing Git Repo"
echo "***************************"
git init
git add . && git commit -m "first commit - project starting point."


echo "***************************"
echo "Installing husky and lint-staged"
echo "***************************"
yarn add -D husky lint-staged


echo "***************************"
echo "Commited everything"
echo "***************************"
git add . && git commit -m "Added husky and lint-staged."


echo "***************************"
echo "INSTALLATION AND SETUP COMPLETE"
echo "***************************"
echo "You should add these scripts to package.json: "
echo "
"scripts": {
  "lint": "eslint '**/*.{js,jsx}' --quiet",
  "format": "prettier --write '**/*.{js,jsx}'",
  "precommit": "lint-staged"
  },  
"lint-staged": {
    "*.{js,jsx,json}": ["prettier --write", "git add"]
  }
"

echo "***************************"
echo "created a new app from create-react-app: $name 👍"
echo "readme and docs folder created 👍"
echo "prettier installed and configured 👍"
echo "eslint installed and configured 👍"
echo "prettier and eslint configured to work together 👍"
echo "git repo created and first commit 👍"
echo "husky and lint-staged added to the project 👍"
echo "everything commited 👍"

echo "***************************"
echo "Run your app: yarn start"
echo "***************************"


# Open application in VS Code editor
code .

