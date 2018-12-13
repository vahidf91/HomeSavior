#!/bin/bash
### this script copies important directories into $MY_APP_HOME/backup/directory-structure
name=`date +"%Y%m%d"`
echo $name
cd ~
/usr/bin/gtar --directory=~ -czf $MY_APP_HOME/backup/directory-structure/"$name"_home.tar.gz * --exclude=app
cd $MY_APP_HOME
/usr/bin/gtar --directory=$MY_APP_HOME -czf $MY_APP_HOME/backup/directory-structure/"$name"_dir.tar.gz * --exclude=$MY_APP_HOME/var/log --exclude=$MY_APP_HOME/backup
find $MY_APP_HOME/backup/directory-structure/* -atime +3 -exec rm -rf {} \;
