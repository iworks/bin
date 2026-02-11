#!/usr/bin/env bash
WP_PLUGINS_DIR=/var/virtuals/wordpress/plugins/
cd ${WP_PLUGINS_DIR}

PLUGINS=$(wp plugin status|grep "^ U"|grep -v PLUGIN_VERSION|awk '{print $2}'|grep -v " ")

wp plugin update ${PLUGINS}
wp language plugin update --all

cd -
