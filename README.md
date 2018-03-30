# Bash Scripts


## MySQL Scripts

### backup-db-to-separate-files.sh

This script should dump each database from a local MySQL exe to separate files in a specified location.


## Utilities

### list-files.sh

Run the output of the list (ls) command through a function to generate a numbered list of files and folders.  Run inside the directory for which you want the listing.

## Javascript development aids

### new-create-react-app-setup

This script creates a new app from create-react-app. It creates a `doc` folder. It moves the create-react-app `README.md` to the `docs` folder and renames it `create-react-app.md`.  It creates a new `readme.md` file at the document root and appends markdown to the file:

```markdown
# $name
An application based on create-react-app.

## Releases
- Release 1.0.0 - initial setup
```

It installs `eslint` and configures it to use `eslint-config-airbnb`.  It installs `prettier` and `eslint-config-prettier` configuring `eslint` to manage conformance to coding standard and `prettier` to auto format code style.

Lastly it create a git repo and makes the first commit.

TODO - add `flow` and `husky` to the setup...



### TODO - add-setup-to-existing-project

Make a script to add: ESLint, Prettier, Flow and Husky to a pre-existing project.