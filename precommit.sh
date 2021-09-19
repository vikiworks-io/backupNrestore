# Change to read, execute only mode
chmod 777 src/*

#create tarball
mkdir -p tarball 2>/dev/null 1>/dev/null
cd tarball
rm -rf backupNrestore 2>/dev/null 1>/dev/null
mkdir backupNrestore
cp -rf ../src/* backupNrestore/

#Make all Executable Read Only
chmod 555 ./backupNrestore/backup		
chmod 555 ./backupNrestore/restore		
chmod 555 ./backupNrestore/truncate_db

tar -czvf backupNrestore.tar.gz backupNrestore
rm -rf backupNrestore
