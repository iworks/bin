#!/usr/bin/env bash
WP_PLUGINS_DIR=/var/virtuals/wordpress/wp-content/plugins
RED='\033[0;31m'
NC='\033[0m' # No Color

cd ${WP_PLUGINS_DIR}

PLUGINS=$(wp plugin status|grep "^ U"|grep -v PLUGIN_VERSION|awk '{print $2}'|grep -v " ")

if [ -x ${PLUGINS} ]
then
    echo -e "${RED}There are no plugins to update.${NC}"
else
    wp plugin update ${PLUGINS}
    wp language plugin update --all
fi

cd - 2>/dev/null 1>&2

