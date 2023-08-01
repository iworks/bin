#!/usr/bin/env bash

if [ $# -ne 1 ]; then
    echo "Usage: ${0} <directory>"
    exit 1
fi

ROOT=${1%/}

if [ ! -f "${ROOT}" ]; then
    echo "Usage: $0 <directory>"
    echo "Can't access to \"${ROOT}\"."
    exit 1
fi

dirs=( "/wp-content" "/wp-content/plugins" "/wp-content/themes" "/wp-content/uploads")



for value in "${dirs[@]}"
do
    index="${ROOT}${value}/index.php"
    if [ ! -f "${index}" ]; then 
        echo "<?php" >> ${index}
        echo "// silence is golden" >> ${index}
    fi
done

