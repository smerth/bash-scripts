# Bash Scripts


## MySQL Scripts

### backup-db-to-separate-files.sh

This script should dump each database from a local MySQL exe to separate files in a specified location.


## Utilities

### list-files.sh

Run the output of the list (ls) command through a function to generate a numbered list of files and folders.  Run inside the directory for which you want the listing.

### new-create-react-app-setup.sh

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



## Drush Scripts

### drush-archive-all.sites.sh

This script will run 'drush ard' on each drupal 7 site for which a site alias is defined.

### drush-backup-all-databases.sh

This script should take in all defined drush aliases and loop through them.  For each alias it should dump the db file to the defind location.

Note:  the path to the saved db dump file is defined in the drush config files

### drush-clear-cache-all-sites.sh

This script should take in all drush aliases and loop through them. For each Drupal site it should read the version and then clear the cache.

### drush-convert-d7-db-utf8mb4.sh

This script should take in all drush aliases and loop through them. It should reject drupal 8 sites. It should reject @none aliases. 

For each Drupal 7 alias it should convert the database to utf8mb4 format.

### drush-open-all-d7-settings.sh

This script should loop through all Drupal 7 aliases and find all the settings files for each site and open each in Sublime Text.

### drush-update-filepaths.sh

This script should take in all drush aliases and loop through them. It should reject drupal 8 aliases. It should reject @none aliases.

For each Drupal 7 alias it should set the file path variable for temporary files and private files.

### drush-update-sites.sh

This script should take in all drush aliases and loop through them. It should ignore drupal 8 aliases.  It should reject @none aliases. 

For each Drupal 7 alias it should run `drush pm-update` against the site. Note: the path to the saved db dump file is defined in drush config files