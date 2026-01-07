#!/usr/bin/env bash
LANG=fra
for filename in $(ls -1 [0-9]*.pdf)
do
    output=$(basename -- "${filename}" ".pdf")
    ocrmypdf -l ${LANG} ${filename} ${output}.ocr.pdf
done

