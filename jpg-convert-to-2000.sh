#!/usr/bin/env bash
for file in *.JPG; do
    echo $file
    convert $file -resize 2000 $file
done
for file in *.jpg; do
    echo $file
    convert $file -resize 2000 $file
done
