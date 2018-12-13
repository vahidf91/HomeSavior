# HomeSavior
Deleting your home directory can lead to a disaster! So I backup it every night using crontab.

I have heard from many of experienced system administrators that it has happened for them to delete their entire home directory by mistakenly typing `rm -rf ~`!! It happened to me once while I was logged in with `root` user when I typed `rm -rf ~` instead if `rm -rf ./`!! 

So I created this script to backup my entire home directory and application directory every night at 1 am and Remember, this script keeps bakcups for 4 days. Place this script at your crontab and check it every few days to make sure your backups are healthy and remember there is no place like home!
