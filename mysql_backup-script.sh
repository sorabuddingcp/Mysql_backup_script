#!/bin/bash
password="Sr@tech123"
date_format=`date +%d-%m-%Y`
mysqldump -u root -pSr@tech123 villetaqueria | gzip -9 > /home/backupmysql/villetaqueria-$date_format.sql.gz
mysqldump -u root -pSr@tech123 tarrshi | gzip -9 > /home/backupmysql/tarrshi-$date_format.sql.gz
mysqldump -u root -pSr@tech123 acellemail | gzip -9 > /home/backupmysql/acellemail-$date_format.sql.gz
mysqldump -u root -pSr@tech123 Payeasyi | gzip -9 > /home/backupmysql/Payeasyi-$date_format.sql.gz
mysqldump -u root -pSr@tech123 Payeasyi | gzip -9 > /home/backupmysql/Payeasyi-$date_format.sql.gz
mysqldump -u root -pSr@tech123 opencart_db | gzip -9 > /home/backupmysql/opencart_db-$date_format.sql.gz
mysqldump -u root -pSr@tech123 modelsba_mbazaar | gzip -9 > /home/backupmysql/modelsba_mbazaar-$date_format.sql.gz
mysqldump -u root -pSr@tech123 cirrusphere | gzip -9 > /home/backupmysql/opencart-$date_format.sql.gz
mysqldump -u root -pSr@tech123 sayyesrealtyllC | gzip -9 > /home/backupmysql/sayyesrealtyllC-$date_format.sql.gz
find /home/backupmysql/* -mtime +30 -exec rm {} \;
