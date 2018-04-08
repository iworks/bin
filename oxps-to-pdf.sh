#!/usr/bin/env bash


for f in $(ls -1 *.oxps)
do
    out=${f/oxps/pdf}
    if [ ! -e $out ]
    then
        echo "Processing $f to $out"
        gxps -sDEVICE=pdfwrite -sOutputFile=$out -dNOPAUSE $f
    fi
done


