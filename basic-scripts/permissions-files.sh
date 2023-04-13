#!/bin/bash
# NAME: Jacek
# DATE: 03/27/2023 11:03:32 PM CEST
# DESCRIPTION: Assigning permissions to mulitple files

read -p "What's the name of the files you want to change permissions for?" FILES
TIME=$(ls -l $FILES-* | wc -l)
echo "Found $TIME files - it will take about ${TIME}s to complete"
for i in $FILES-*
do
	echo "Changed permissions for $i file"
	sleep 1
	chmod 755 $i
done
