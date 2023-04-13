#!/bin/bash
# NAME: Jacek
# DATE: 03/28/2023 10:48:46 PM CEST
# DESCRIPTION: used to copy files to a remote location
loc=$(cat /home/jacek/servers)
for location in $loc
do
	scp photos $location:/photos-copy
done
