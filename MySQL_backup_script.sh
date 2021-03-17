#!/bin/sh
# System + MySQL backup script
# Copyright (c) 2008 Marchost
# This script is licensed under GNU GPL version 2.0 or above
# ---------------------------------------------------------------------

#########################
######TO BE MODIFIED#####

### MySQL Setup ###
MUSER="jm"
MPASS="3hNjCJ5UEdfZ7x6R"
MHOST="myphpdevelopers.com"

### FTP server Setup ###
######DO NOT MAKE MODIFICATION BELOW#####
#########################################

### Binaries ###
GZIP="$(which gzip)"
FTP="$(which ftp)"
MYSQL="$(which mysql)"
MYSQLDUMP="$(which mysqldump)"

### Today + hour in 24h format ###

### Create hourly dir ###

### Get all databases name ###
DBS="$($MYSQL -u $MUSER -h $MHOST -p$MPASS -Bse 'show databases')"
COUNT=0
for db in $DBS
do
  COUNT=`expr $COUNT + 1`
done
echo $COUNT
### Compress all tables in one nice file to upload ###
