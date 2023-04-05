#!/usr/bin/env bash
if [ $# -ne 1 ]; then
	echo "Usage: $0 file"
	exit 1
fi
FILE=${1}

echo ${FILE}
git add ${FILE}
/home/illi/bin/5o5-ffvoile.fr.php ${FILE}
./bin/import.php e
