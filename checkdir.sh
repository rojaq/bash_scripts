#!/bin/bash
# NAME: Jacek
# DATE: 03/29/2023 09:46:11 PM CEST
# DESCRIPTION: This script finds directories /home/ without the users

cd /home
for DIR in *
do
	CHK=$(grep -c "/home/$DIR" /etc/passwd)
	if [[ ! $CHK -eq 0 ]];
	then
		echo "${DIR} is assigned to the user"
	else
		echo "${DIR} is NOT assigned to the user"
	fi
done
