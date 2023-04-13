#!/bin/bash
# NAME: Jacek
# DATE: 
# DESCRIPTION: lorem ips
echo "Samurai"
echo "Keanu"
echo "Bruce"
read -p "Choose your fighter:" FIGHTER
case $FIGHTER in
	"Samurai"|"samurai")
		echo "You are a samurai!"
		;;
	"Keanu"|"keanu")
		echo "Reeves baby"
		;;
	"Bruce")
		echo "Willis"
		;;
esac
read -p "Choose 1 or 0" NUMBER
BEAST="$(($RANDOM % 2))"
if [ $NUMBER -eq $BEAST ]; then
	echo "you killed that thang"
else
	echo "we fuckin lost"
	exit 1
fi
sleep 2
echo "Boss battle , choose 0-9"
read NUMBER
BEAST="$(($RANDOM % 10))"
if [[ $NUMBER -eq $BEAST || $NUMBER == "jacek" ]]
then
	echo "killed boss"
elif [[ $USER == "root" ]]; then
	echo "destroyed boss"
else
	echo "bruh, you did not even touch him"
fi
