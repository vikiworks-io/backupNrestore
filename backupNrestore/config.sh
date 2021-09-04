#!/bin/bash

################################### DOMAIN DETAILS ######################################
# Keep all config values in single quotes unless specified otherwise
# enter the website address
DOMAIN="test.org"

################################### WEBSITE ROOT PATH ###################################

# website root directory ( don't keep / at the end)
# Do not use quotes

WEBSITE_ROOT_DIR=/home/www

################################### BACKUP PATH  ########################################

# website backup directory ( don't keep / at the end).
# Do not use quotes

BACKUP_DIR=/home/backup

################################### DB CREDENTIALS ######################################

# Keep the password inside single quotes 
# ( Do not use double quotes )

DB1_NAME="DB_NEW"
DB1_USERNAME="db_u"
DB1_PASSWORD="DBad"

DB2_NAME=''
DB2_USERNAME=''
DB2_PASSWORD=''

DB3_NAME=''
DB3_USERNAME=''
DB3_PASSWORD=''

DB4_NAME=''
DB4_USERNAME=''
DB4_PASSWORD=''


################################### DB CONNECTION DETAILS ################################
DB_HOST='localhost'
DB_PORT='3306'

################################### MYSQL ROOT USER  DETAILS ( Optionsl ) ###############
MYSQL_ADMIN_USERNAME=''
MYSQL_ADMIN_PASSWORD=''
