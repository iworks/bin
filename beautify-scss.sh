#!/usr/bin/env bash

export LC_ALL=C

for filename in `git status |grep scss|grep modified|awk '{print $NF}'`
do
    css-beautify -r -t ${filename}
done

