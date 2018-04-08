#!/bin/bash
export LC_ALL="C"
POT=$(ls -1 *pot)
for ELEMENT in $(ls -1 *.po|sed -e 's/\.po//')
do
    echo "${POT} -> ${ELEMENT}.po"
    msgmerge -U ${ELEMENT}.po ${POT}
    msgfmt --statistics -v ${ELEMENT}.po -o ${ELEMENT}.mo
done
rm *.po~
