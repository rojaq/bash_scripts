#!/bin/bash
# NAME: Jacek
# DATE: 03/26/2023 11:23:03 PM CEST
# DESCRIPTION: backup /var and /etc directories

tar cvf /tmp/backup.tar /etc /var
gzip /tmp/backup.tar
find /tmp/backup.tar.gz -mtime -1 -type f -print &> /dev/null
if [[ $? == 0 ]]; then
	echo "Backup created"
	echo
	echo "Archiving backup"
	# scp /tmp/backup.tar.gz root@192...:/path
else
	echo "Did not create the backup"
fi
