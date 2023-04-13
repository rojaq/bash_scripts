#!/bin/bash
# NAME: Jacek
# DATE: 
# DESCRIPTION: lorem ips
FILE="ping-list.txt"
for IP in $(cat "$FILE")
do
	ping -c1 $IP
	if [[ $? == 0 ]]; then
		echo -OK-
	else
		echo -NOT OK-
	fi
done
