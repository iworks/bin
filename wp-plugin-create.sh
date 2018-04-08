#!/usr/bin/env bash

if [ -z "$1" ]
then
    echo "No argument supplied"
    exit
fi

NAME=${1}
SLUG=${NAME/ /-}
SLUG=${SLUG,,}
CLASS=${SLUG/-/_}
PREFIX=${CLASS^^}

echo Plugin class:  ${CLASS}
echo Plugin name:   ${NAME}
echo Plugin prefix: ${PREFIX}
echo Plugin slug:   ${SLUG}

git clone git@github.com:iworks/wordpress-plugin-stub.git ${SLUG}
cd ${SLUG}
#
# replace plugin name
#
FILES=$(find -type f|grep -E "php|pot|json|Gruntfile.js")
perl -pi -e "s/wordpress-plugin-stub/${SLUG}/g"   ${FILES}
perl -pi -e "s/WORDPRESS_PLUGIN_STUB/${PREFIX}/g" ${FILES}
perl -pi -e "s/wordpress_plugin_stub/${CLASS}/g"  ${FILES}
perl -pi -e "s/WordPress Plugin Stub/${NAME}/g"   ${FILES}
#
# make dirs
#
mkdir -p ./assets/scripts/admin/src
mkdir -p ./assets/sass/admin
mkdir -p ./assets/styles/admin
mkdir -p ./vendor/iworks
#
# rename files
#
mv wordpress-plugin-stub.php ${SLUG}.php
mv vendor/iworks/wordpress-plugin-stub.php vendor/iworks/${SLUG}.php
mv languages/wordpress-plugin-stub.pot languages/${SLUG}.pot

git submodule add git@github.com:iworks/wordpress-options-class.git vendor/iworks/options
