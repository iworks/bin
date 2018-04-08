#!/usr/bin/env bash

#Expires all the loose objects.
git reflog expire --expire=now --all

#Checks if there are any loose objects.
git fsck --full --unreachable

#Repacks the pack.
git repack -A -d

#Finally removes those objects.
git gc --aggressive --prune=now 
