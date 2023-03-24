#!/bin/bash
set -e
read -p "Type in the name of the script: " NAME
read -p "Where to save it? " LOC
function write_basic()
{
	echo "#!/bin/bash" >> ${NAME}.sh
	echo "# NAME: Jacek" >> ${NAME}.sh
	echo "# DATE: $DATE" >> ${NAME}.sh
	echo "# DESCRIPTION: lorem ips" >> ${NAME}.sh
}
touch ${NAME}.sh && chmod 755 ${NAME}.sh && write_basic && mv ${NAME}.sh ${LOC}
