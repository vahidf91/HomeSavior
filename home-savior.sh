#!/bin/bash
### this script copies important directories into $MY_APP_HOME/backup/directory-structure
name=`date +"%Y%m%d"`
echo $name
cd ~
gtar --directory=~ -czf $MY_APP_HOME/backup/directory-structure/"$name"_home.tar.gz *
cd /app
gtar --directory=/app -czf $MY_APP_HOME/backup/directory-structure/"$name"_dir.tar.gz * --exclude=$MY_APP_HOME/var/log --exclude=$MY_APP_HOME/backup
find $MY_APP_HOME/backup/directory-structure/* -atime +3 -exec rm -rf {} \;
