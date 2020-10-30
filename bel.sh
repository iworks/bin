#!/bin/sh
if [ $# -ne 1 ]; then
	echo "Usage: $0 file"
	exit 1
fi
FILE=${1}

echo ${FILE}

perl -pi -e 's/"//g' ${FILE}
perl -pi -e 's/^[0-9]+\.0,/,/g' ${FILE}
perl -pi -e 's/[\t  ]+/ /g' ${FILE}
perl -pi -e 's/^[\t  ]+//g' ${FILE}
perl -pi -e 's/[\t  ]+$//g' ${FILE}
perl -pi -e 's/\n/,/gs' ${FILE}
perl -pi -e 's/,([0-9]+),([0-9]{4})/\n\1,\2/g' ${FILE}
perl -pi -e 's/,([A-Z ]+) ([^,]+),/,\2 \1,/g' ${FILE}
perl -pi -e 's/,([A-Z ]+) ([^,]+),/,\2 \1,/g' ${FILE}
perl -pi -e 's/[\t  ]+/ /g' ${FILE}
perl -pi -e 's/,([0-9]+),([0-9]{4}) ([A-Z]{3}),/\n\1,\3,\2,/g' ${FILE}
perl -pi -e 's/,([0-9]{4}) ([A-Z]{3}),/,\2,\1,/g' ${FILE}
# perl -pi -e 's/\.0//g' ${FILE}
# perl -pi -e 's/[\t\r\n]/,/g' ${FILE}
# perl -pi -e 's/[\t\r\n]/,/g' ${FILE}
# perl -pi -e 's/,([0-9]+),([A-Z]{3})/\n\1,\2/g' ${FILE}
# perl -pi -e 's/\n(\d+) (DNC|DNS|DNF|DSQ|OCS|DPI|RDG)/,\1 \2/g' ${FILE}
# perl -pi -e 's/,(DNC|DNS|DNF|DSQ|OCS|DPI|RDG)/ \1/g' ${FILE}
