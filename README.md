## Backup and Restore Website

These scripts are used to backup and restore a website. 

## Backup website

  - cd backupNRestore
  - feed your website configuration @ config.sh
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


