#!/usr/bin/env bash

if [ -z "$1" ]
then
    echo "No argument supplied"
    exit
fi

FILE=${1}
echo File: ${FILE}

TF=$(mktemp /tmp/XXXXXXXXX.pdf)
echo "COPY: $TF"

cp ${FILE} ${TF}

TF=$(mktemp /tmp/XXXXXXXXX.pdf)

gs -sDEVICE=pdfwrite -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -o ${TF} ${FILE}

mv ${TF} ${FILE}
