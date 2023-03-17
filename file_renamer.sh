#!/usr/bin/env bash
cd ~/Desktop/folder1/
DATE=$(date +%F)

for PICTURE in *.txt
do
	echo "Renaming $PICTURE to $DATE";
	mv $PICTURE $DATE-$PICTURE;
done
