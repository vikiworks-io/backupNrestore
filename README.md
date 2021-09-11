## Backup and Restore Website

Utility to backup and restore a webite. This utility can backup `any website with maximum of 4 databases.

## Backup website

  - cd backupNRestore
  - feed your website configuration in config.sh
  - ./backup.sh 
    [ The backed up website will be compressed and stored as .tar.gz ]
    [ Ex: test.tar.gz ]
   

## Restore website
   
  - locate the website backup file ( test.tar.gz )
  - tar -zxvf test.tar.gz
  - cd test
  - cd backupNRestore
  - ./restore

  [ This script will restore the website, Make sure db, dns and ssl certificate are configured before restoring ]


## Note

   1. Wordpress DB Configuration Location:
   
      - wp-config.php
 
 
   2. OpenCart DB Configuration Location:

      - admin/config.php
      - config.php

