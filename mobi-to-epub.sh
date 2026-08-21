#!/usr/bin/env bash

for book in *.mobi
do
    echo -e "\n"
    echo "Converting $book"
    mobitool -e "$book"
done

