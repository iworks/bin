#!/usr/bin/env bash
git tag --sort=-v:refname | while read current_tag; do
    previous_tag=$(git describe --tags --abbrev=0 "$current_tag^" 2>/dev/null)
    echo -e "\n## Version $current_tag"
    if [ -n "$previous_tag" ]; then
        git log "$previous_tag..$current_tag" --format="- %s" --no-merges | awk '!visited[$0]++'
    else
        git log "$current_tag" --format="- %s" --no-merges | awk '!visited[$0]++'
    fi
done > CHANGELOG.md
