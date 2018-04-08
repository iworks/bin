#!/usr/bin/env bash
du -hs
mogrify -resize 2000 *
jpegoptim * -m85
exiftool -all= $(find -type f|grep -i jpg)
rm *_original
du -hs

