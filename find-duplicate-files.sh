#!/usr/bin/env bash

find . -type f -exec md5sum {} + | sort | uniq -w32 -d --all-repeated=separate

# find . -type f -exec md5sum {} +: Znajduje wszystkie pliki i oblicza ich sumy MD5.
# sort: Sortuje pliki według obliczonych sum kontrolnych.
# uniq -w32 -d --all-repeated=separate: Porównuje pierwsze 32 znaki (hash MD5) i grupuje powtarzające się pliki.
