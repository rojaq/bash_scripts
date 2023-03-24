#!/bin/bash
#Author: Jacek
#23.03.2023
#pulling message from /var/log/messages

while true
do
	read -p "1 - errors 2 - warnings 3 - fails " type
	echo
	case $type in
	1|err*)
		type="error"
		;;
	2|warn*)
		type="warn"
		;;
	3|fails*)
		type="fail"
		;;
	0|q)
		break
		;;
	esac
	grep -i ${type} /home/jacek/Desktop/bash_scripts/logscript/messages | tee /dev/tty | wc -l
done
