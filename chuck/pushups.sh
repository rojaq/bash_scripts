#!/bin/env bash

x=1
while [[ $x -lt 10 ]]
do
	read -p "Did $x pushup, continue?"
	((x++))
done
