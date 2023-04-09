#!/usr/bin/env bash

export LC_ALL=C

for filename in `git status |grep scss|grep modified|awk '{print $NF}'`
do
    tmp=$(mktemp -q)
    css-beautify ${filename} > ${tmp}
    mv ${tmp} ${filename}
done

