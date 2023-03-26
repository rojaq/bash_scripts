#!/bin/bash
set -e
read -p "Type in the name of the script: " NAME
read -p "Where to save it? " LOC
DATE=$(date +"%x %r %Z")
function write_basic()
{
	echo "#!/bin/bash" >> ${NAME}
	echo "# NAME: Jacek" >> ${NAME}
	echo "# DATE: $DATE" >> ${NAME}
	echo "# DESCRIPTION: " >> ${NAME}
}
touch ${NAME} && chmod 755 ${NAME} && write_basic && mv ${NAME} "${LOC}"
