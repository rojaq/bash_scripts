#!/bin/bash
# NAME: Jacek
# DATE: 03/28/2023 10:36:59 PM CEST
# DESCRIPTION: Script for checking if files exist
FILES="/etc/passwd
/etc/shadow
/etc/nsswitch.conf
/etc/fakefile"

for file in $FILES
do
	if [[ ! -e $file ]]; then
		echo "${file} doesn't exist ----"
	fi
done
