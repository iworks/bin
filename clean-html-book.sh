#!/usr/bin/env bash


if [ $# -ne 1 ]; then
	echo "Usage: $0 file"
	exit 1
fi

file=${1}

# Clean HTML attributes (class, id, style, data-*)
sed -i -E 's/ (class|id|style|data-[a-z-]+)="[^"]*"//g' "$file"

# Remove span tags
sed -i -E 's/<span[^>]*>//g' "$file"
sed -i -E 's/<\/span>//g' "$file"

# Remove div tags
sed -i -E 's/<div[^>]*>//g' "$file"
sed -i -E 's/<\/div>//g' "$file"

# Replace all whitespace after <p> with <p>
sed -i -E ':a;N;$!ba;s/<p>[[:space:]]+/<p>/g' "$file"

# Replace all whitespace before </p> with </p>
sed -i -E ':a;N;$!ba;s/[[:space:]]+<\/p>/<\/p>/g' "$file"

#remove IMG tag
sed -i -E 's/<img[^>]*>//g' "$file"

