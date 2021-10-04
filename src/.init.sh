#!/bin/bash
# Version 1.4
################################## Characters which are not supported ###################
#
#	Don't use these characters for db password, db name, website root path, etc
#
#	- Dollar Sign 	<$>
#	- Single Quotes <'>
#	- Double Quotes <"> 
#	- Space 		< >
#
#
#########################################################################################

################################### DOMAIN DETAILS ######################################
# Keep all config values in single quotes unless specified otherwise
# enter the website address
#DOMAIN='example.com'
DOMAIN=''

################################### WEBSITE ROOT PATH ###################################

# website root directory ( don't keep / at the end)
# Use single quotes
#WEBSITE_ROOT_DIR='/home/www/html'
WEBSITE_ROOT_DIR='/home/www'

################################### BACKUP PATH  ########################################

# website backup directory ( don't keep / at the end).
# Use single quotes

BACKUP_DIR='/home/backup'

#Rename this directory to something else, if your website root already has a directory named DB_DUMP
DB_DUMP_DIR_NAME='DB_DUMP'
################################### DB CREDENTIALS ######################################

# Keep the password inside single quotes 
# ( Do not use double quotes )

DB1_NAME=''
DB1_USERNAME=''
DB1_PASSWORD=''

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
