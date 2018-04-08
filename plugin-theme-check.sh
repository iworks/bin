#!/bin/bash

PARAMS="-R --exclude *.js --exclude *.po"

echo "file_get_contents"
grep ${PARAMS} "file_get_contents" *

echo "wp_remote_get"
grep ${PARAMS} "wp_remote_" * 

echo "Feed Cache transient lifetime"
grep ${PARAMS} "wp_feed_cache_transient_lifetime" *  

echo "Hidden code"
grep ${PARAMS} "base64_decode" * 

echo "Inefficient queries: SHOW TABLES"
grep ${PARAMS} "SHOW TABLES" * 

echo "Inefficient queries: DESC (we are looking for places where we can switch to DESCRIBE not ORDER BY)"
grep ${PARAMS} "DESC " * 

echo "DB Queries"
grep ${PARAMS} "wpdb->" *

echo "Debug: WP_DEBUG "
grep ${PARAMS} "WP_DEBUG" * 

echo "Debug: error_reporting "
grep ${PARAMS} "error_reporting" * 

echo "Debug: display_errors "
grep ${PARAMS} "display_errors" * 

echo "Rogue .svn folders"
find . -type d -name ".svn" 

echo "Google Adsense"
grep ${PARAMS} "googlesyndication.com" * 

echo "Flush Permalinks"
grep ${PARAMS} "wp_rewrite->flush_rules" *
grep ${PARAMS} "flush_rewrite_rules" *
grep ${PARAMS} "rewrite_rules" *
grep ${PARAMS} "flush_rules" *

echo "Set Transient"
grep ${PARAMS} "set_transient" *

echo "Don't touch roles. Look out for deleting default roles"
grep ${PARAMS} "remove_role" *

echo "Timthumb ALLOW_EXTERNAL"
grep ${PARAMS} "define ('ALLOW_EXTERNAL" *

echo "OFC Image Upload"
find . -type f -name "ofc_upload_image.php"

echo "Check for filesystem functions"
grep ${PARAMS} -e "scandir" -e "opendir" -e "readdir" -e "fopen" -e "glob" -e "fwrite" -e "chmod" -e "chdir" -e "mkdir" -e "touch" -e "stat" -e "copy" *

echo "dbDelta"
grep ${PARAMS} "dbDelta" *

echo "SHOW TABLES"
grep ${PARAMS} "SHOW TABLES" *

echo "scream.enabled"
grep ${PARAMS} "scream.enabled" *

echo "ALLOW_EXTERNAL"
grep ${PARAMS} "ALLOW_EXTERNAL" *

echo "ofc_upload_image.php"
grep ${PARAMS} "ofc_upload_image.php" *

echo "woothemes_framework_update_head"
grep ${PARAMS} "woothemes_framework_update_head" *

echo "wpdb|CURLOPT_CONNECTTIMEOUT"
grep ${PARAMS} "wpdb|CURLOPT_CONNECTTIMEOUT" *

echo "WPCom_Theme_Updater"
grep ${PARAMS} "WPCom_Theme_Updater" *

echo "dbDelta|mysql_connect"
grep ${PARAMS} "dbDelta|mysql_connect" *

echo "wp_mkdir_p|wp_cache_flush"
grep ${PARAMS} "wp_mkdir_p|wp_cache_flush" *

echo "wp_clean_plugins_cache"
grep ${PARAMS} "wp_clean_plugins_cache" *

echo "wp_cache_delete"
grep ${PARAMS} "wp_cache_delete" *

echo "switch_to_blog"
grep ${PARAMS} "switch_to_blog" *

echo "eval"
grep ${PARAMS} "eval" *

echo "upload_mimes"
grep ${PARAMS} "upload_mimes" *

echo "http_request_timeout"
grep ${PARAMS} "http_request_timeout" *

echo "ini_set"
grep ${PARAMS} "ini_set" *

echo "do_shortcode"
grep ${PARAMS} "do_shortcode" *

echo "Check for useful strings."
grep ${PARAMS} "Edublogs" *
grep ${PARAMS} "edublogs" *
grep ${PARAMS} "EDUBLOGS" *
grep ${PARAMS} "campuspress" *
grep ${PARAMS} "CampusPress" *
