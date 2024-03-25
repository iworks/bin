#!/usr/bin/env bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 URL"
	exit 1
fi

HOST=$1

files=( \
    "wp-config.php" \
    ".wp-config.php.swp" \
    "wp-content/debug.log" \
    "wp-content" \
    "wp-includes" \
)

for file in ${files[@]}; do
    echo ${HOST}/${file}
    curl -sI ${HOST}/${file} |grep -E "^(HTTP|Content-Length:)"
done


