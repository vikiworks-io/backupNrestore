# Change to read, execute only mode
chmod 777 backup
chmod 777 restore
chmod 777 truncate_db
chmod 777 git_snapshot
chmod 777 db_backup
chmod 777 config.sh

#create tarball
mkdir -p tarball 2>/dev/null 1>/dev/null
cd tarball
rm -rf backupNrestore 2>/dev/null 1>/dev/null
mkdir backupNrestore
cd ..

cp -rf LICENSE tarball/backupNrestore/
cp -rf backup tarball/backupNrestore/
cp -rf db_backup tarball/backupNrestore/
cp -rf truncate_db tarball/backupNrestore/
cp -rf README.md tarball/backupNrestore/
cp -rf config.sh tarball/backupNrestore/
cp -rf git_snapshot tarball/backupNrestore/
cp -rf restore tarball/backupNrestore/
cp -rf version.txt tarball/backupNrestore/

cd tarball

#Make all Executable Read Only
chmod 555 ./backupNrestore/backup		
chmod 555 ./backupNrestore/restore		
chmod 555 ./backupNrestore/truncate_db
chmod 555 ./backupNrestore/git_snapshot
chmod 555 ./backupNrestore/db_backup
chmod 555 ./backupNrestore/config.sh

tar -czvf backupNrestore.tar.gz backupNrestore
rm -rf backupNrestore
