#!/bin/bash
for x in google bing facebook amazon
do
	if ping -q -c 2 -W 1 ${x}.com >> pingi_text; then
		echo "$x is up"
	else
		echo "$x is down"
	fi
done
