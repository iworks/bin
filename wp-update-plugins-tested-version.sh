#!/usr/bin/env bash
perl -pi -e 's/Tested up to:.+/Tested up to: 6.7/g' $(grep -rl "Tested up to"|grep trunk)
svn ci -m "Tested up to" $(ls -1|grep "/"|grep -v git)

