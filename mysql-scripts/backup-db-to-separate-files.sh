#! /bin/bash

# This script should dump each database from a local MySQL exe to separate files in a specified location.

# set directory for storing backup files
TIMESTAMP=$(date +"%F")
BACKUP_DIR="/Users/smerth/Google_Drive/MySQL-backups/$TIMESTAMP"

# locate the executables for mysql and mysqldump
MYSQL=/usr/local/Cellar/mysql/5.7.16/bin/mysql
MYSQLDUMP=/usr/local/Cellar/mysql/5.7.16/bin/mysqldump

mkdir -p "$BACKUP_DIR/mysql"

databases=$MYSQL -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema|performance_schema)"

for db in $databases; do

  $MYSQLDUMP --force --opt --databases $db | gzip > "$BACKUP_DIR/mysql/$db.gz"

done