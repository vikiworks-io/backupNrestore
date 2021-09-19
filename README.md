## Backup and Restore Website

Utility to backup and restore a webite. This utility can backup `any website with maximum of 4 databases.

## Quick Install 

	wget https://github.com/vikiworks-io/website_backupNrestore/blob/master/tarball/backupNrestore.tar.gz?raw=true -O script.tar.gz; tar -zxvf script.tar.gz;rm script.tar.gz; cd backupNrestore;


## Backup website

  - cd src (or) cd backupNRestore
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


## Migrate Website

  - locate the website backup file ( test.tar.gz )
  - tar -zxvf test.tar.gz
  - cd test
  - Search and replace "old domain name" 		-> "new domain name" 
  - Search and replace "old website root path" 	-> "new website root path"
  - Search and replace "old db credentials" 	-> "new db credentials"
  - Update the configuration files backupNRestore/config.sh, backupNRestore/.config_old.sh
  - cd backupNRestore 
  - ./restore

  [ This script will restore/migrate the website, Make sure db, dns and ssl certificate are configured before restoring ]


## Note

   1. Wordpress DB Configuration Location:
   
      - wp-config.php
 
 
   2. OpenCart DB Configuration Location:

      - admin/config.php
      - config.php

