#!/usr/bin/env bash

if [ -z "$1" ]
then
    echo "No argument supplied"
    exit
fi

FILE=${1}
echo File: ${FILE}

cp ${FILE} /tmp/${FILE}

#
# replace plugin name
#
perl -pi -e 's/Infobox sailboat specifications/Jacht infobox/g' ${FILE}
perl -pi -e 's/name([ =]+)/nazwa=/g' ${FILE}
perl -pi -e 's/access-date([ =]+)/data-dostępu = /g' ${FILE}
perl -pi -e 's/insignia([ =]+)/symbol = /g' ${FILE}
perl -pi -e 's/website([ =]+)/strona = /g' ${FILE}
perl -pi -e 's/title([ =]+)/tytuł = /g' ${FILE}
perl -pi -e 's/designer([ =]+)/konstruktor = /g' ${FILE}
perl -pi -e 's/year([ =]+)/rok = /g' ${FILE}
perl -pi -e 's/location([ =]+)/kraj = /g' ${FILE}
perl -pi -e 's/References/Przypisy/g' ${FILE}
perl -pi -e 's/archive-url/archiwum/g' ${FILE}
perl -pi -e 's/language/język/g' ${FILE}
perl -pi -e 's/archive-date/zarchiwizowano/g' ${FILE}
perl -pi -e 's/Reflist/Przypisy/g' ${FILE}
perl -pi -e 's/External links/Linki zewnętrzne/g' ${FILE}
perl -pi -e 's/History/Historia/g' ${FILE}
perl -pi -e 's/Category/:Kategoria/g' ${FILE}
perl -pi -e 's/flagcountry/flaga/g' ${FILE}
perl -pi -e 's/\{\{Cite news/{{Cytuj /g' ${FILE}
perl -pi -e 's/\{\{Cite web/{{Cytuj /g' ${FILE}
perl -pi -e 's/{{Cite web/{{Cytuj /g' ${FILE}
perl -pi -e 's/\{\{Cite book/{{Cytuj /g' ${FILE}
#perl -pi -e "s///g" ${FILE}

