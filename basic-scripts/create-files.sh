#!/usr/bin/env bash
read -p "How many files? " FILES
read -p "What should be the name? " NAME


for i in $(seq 1 $FILES)
do
	touch ${NAME}-${i}
done
