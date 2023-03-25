#!/bin/bash
# NAME: Jacek
# DATE: 
# DESCRIPTION: lorem ips
ping -c$2 $1 > /dev/null
if [ $? -eq 0 ];then
	echo "--WORKED--"
else
	echo "--FAILED--"
fi
