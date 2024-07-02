#!/usr/bin/env bash

export LC_ALL=C

for filename in `git status |grep scripts|grep src|grep js$|grep modified|awk '{print $NF}'`
do
    echo ${filename}
    js-beautify -t -r ${filename}
done

