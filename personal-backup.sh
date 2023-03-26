#!/usr/bin/env bash
BACKUP=${HOME}/backup
function backup(){
	while true
	do
		if [[ ! -e $BACKUP ]];then
			mkdir $BACKUP
		fi
		echo
		echo -e "Hello to the backup program. Plese choose one of the below options:\n1. Backup\n2. Delete backup\n3. Show backed up files\n4. Change backup folder\nQ to quit: "
		read OPTION
		case $OPTION in
			1|[Bb]ackup)
				echo -e "FILES:\n"
				ls -1
				read -p "Please choose a file/files: " FILES
				if [ -e $FILES ];then
					if [ -f $FILES ];then
						cp $FILES $BACKUP
					elif [ -d $FILES ];then
						cp -r $FILES $BACKUP
					fi
					echo "Backup successfull"
				else
					echo "Unsuccessfull -doesn't exist"
				fi
				;;
			2|[Dd]elete)
				echo -e "Choose a file to delete:\n"
				ls -1 $BACKUP
				read FILES
				if [ -e $BACKUP/$FILES ];then
					rm $BACKUP/$FILES
					echo "Deleted"
				else
					echo "File doesn't exist"
				fi
				;;
			3|[Ss]how)
				ls -1 $BACKUP
				;;
			4)
				read -p "Please type in a new folders name: " BACKUP
				echo "Changed new backup folder path to: $BACKUP"
				;;
			"q"|"Q")
				return 0
				;;
			*)
				echo "Please try again"
				;;
		esac
	done
}
backup
