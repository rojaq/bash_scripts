#!/bin/bash
# NAME: Jacek
# DATE: 26.03.2023
# DESCRIPTION: script to delete files older than specified date
read -p "Rename or Delete? [1/2] " option
read -p "How many days? " days
#safety measure
if [[ $days > 180 ]]; then
	while true; 
		do
			if [[ $option == 1 || $option =~ [Rr]ename ]]; then
				find /home/jacek/Desktop -mtime +${days} -exec mv {} {}.old \;
				break
			elif [[ $option == 2 || $option =~ [Dd]elete ]]; then
				find /home/jacek/Desktop -mtime +${days} -exec rm {} \;
				break
			else
				echo "did not understand the command"
				read -p "Rename or Delete? " option
			fi
		done
else
	echo "Please type in more days - safety = 180"
fi
