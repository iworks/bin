#!/usr/bin/env bash

if [ -z "$1" ]
then
    echo "No argument supplied"
    exit
fi

FILE=${1}
echo File: ${FILE}

TF=$(mktemp /tmp/505.XXXXXXXXX)
echo "COPY: $TF"

cp ${FILE} ${TF}

#
# replace plugin name
#
perl -pi -e 's/^B([0-9])/BEL,\1/g' ${FILE}
perl -pi -e 's/^A([0-9])/ARG,\1/g' ${FILE}
perl -pi -e 's/^D([0-9])/DEN,\1/g' ${FILE}
perl -pi -e 's/^F([0-9])/FRA,\1/g' ${FILE}
perl -pi -e 's/^G([0-9])/GER,\1/g' ${FILE}
perl -pi -e 's/^H([0-9])/NED,\1/g' ${FILE}
perl -pi -e 's/^I([0-9])/ITA,\1/g' ${FILE}
perl -pi -e 's/^IR([0-9])/IRL,\1/g' ${FILE}
perl -pi -e 's/^J([0-9])/JPN,\1/g' ${FILE}
perl -pi -e 's/^K([0-9])/GBR,\1/g' ${FILE}
perl -pi -e 's/^KA([0-9])/AUS,\1/g' ${FILE}
perl -pi -e 's/^KB([0-9])/BER,\1/g' ${FILE}
perl -pi -e 's/^C([0-9])/CAN,\1/g' ${FILE}
perl -pi -e 's/^KC([0-9])/CAN,\1/g' ${FILE}
perl -pi -e 's/^KH([0-9])/HKG,\1/g' ${FILE}
perl -pi -e 's/^KK([0-9])/KEN,\1/g' ${FILE}
perl -pi -e 's/^KS([0-9])/SIN,\1/g' ${FILE}
perl -pi -e 's/^L([0-9])/FIN,\1/g' ${FILE}
perl -pi -e 's/^MO([0-9])/MON,\1/g' ${FILE}
perl -pi -e 's/^N([0-9])/NOR,\1/g' ${FILE}
perl -pi -e 's/^OE([0-9])/AUT,\1/g' ${FILE}
perl -pi -e 's/^S([0-9])/SWE,\1/g' ${FILE}
perl -pi -e 's/^SA([0-9])/RSA,\1/g' ${FILE}
perl -pi -e 's/^U([0-9])/USA,\1/g' ${FILE}
perl -pi -e 's/^US([0-9])/USA,\1/g' ${FILE}
perl -pi -e 's/^Z([0-9])/SUI,\1/g' ${FILE}
perl -pi -e 's/^ZB([0-9])/ZIM,\1/g' ${FILE}
perl -pi -e 's/^KR([0-9])/ZIM,\1/g' ${FILE}
