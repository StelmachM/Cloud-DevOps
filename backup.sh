#!/bin/bash

CURRENTDATE=$(date +%d%m%y)
FILENAME=backup$CURRENTDATE.gz
BACKUPDIRECTORY=/usr/local/Task2/
tar cvzf $BACKUPDIRECTORY$FILENAME /var/log/*.gz /var/log/*/*.gz > ${BACKUPDIRECTORY}report-$CURRENTDATE.txt

#How to make sure script works
#Way #1: Wait for cron to do its job
#Way #2: run script by executing "./backup.sh". It will create a new tarball in local directory.
#It will also create a report that contains list of the archived files

#How to check that backup is able to be restored:
#go to local directory and using "ls" command check if a backup file was created.
#If it was created then run "tar -xvf <<archive name>>". It will extract archived files.
