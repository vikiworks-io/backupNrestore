## Backup and Restore Website

Utility to backup and restore a webite. This utility can backup `any website with maximum of 4 databases.

## Quick Install 

	wget https://github.com/vikiworks-io/website_backupNrestore/blob/master/tarball/backupNrestore.tar.gz?raw=true -O script.tar.gz; tar -zxvf script.tar.gz;rm script.tar.gz; cd backupNrestore;


## Backup website Steps

  1. cd backupNRestore
  2. feed your website configuration in config.sh
  3. ./backup
    [ The backed up website will be compressed and stored as .tar.gz ]
    [ Ex: test.tar.gz ]
   

## Restore Website Steps
   
  1. locate the website backup file ( test.tar.gz )
  2. tar -zxvf test.tar.gz
  3. cd test
  4. cd backupNRestore
  5. ./restore

  [ This script will restore the website, Make sure db, dns and ssl certificate are configured before restoring ]

## Backup website Steps ( Optimized )

  1. cd backupNRestore
  2. feed your website configuration in config.sh
  3. ./backup_optimized tar
    [ The backed up website will be compressed and stored as .tar.gz ]
    [ Ex: test.tar.gz ]
 

    This utility take backup with version snapshot ( using git ) and use rsync to backkup only the difference from previous backup.
    backup_optimized is faster than the previous one. you can skip the tar option if you don't want it tobe compressed. 

## Migrate Website Steps 

  1. locate the website backup file ( test.tar.gz )
  2. tar -zxvf test.tar.gz
  3. cd test
  4. Search and replace "old domain name" 		-> "new domain name"  			( All files and folders, including hidden files )
  5. Search and replace "old website root path" -> "new website root path"      ( All files and folders, including hidden files )
  6. Search and replace "old db credentials" 	-> "new db credentials"         ( All files and folders, including hidden files )
  7. Update the configuration files backupNRestore/config.sh, backupNRestore/.config_old.sh
  8. cd backupNRestore 
  9. ./restore

  [ This script will restore/migrate the website, Make sure db, dns and ssl certificate are configured before restoring ]


## Note

   1. Wordpress DB Configuration Location:
   
      - wp-config.php
 
 
   2. OpenCart DB Configuration Location:

      - admin/config.php
      - config.php

