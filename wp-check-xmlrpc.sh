#!/usr/bin/env bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 URL (without xmlrpx.php)"
	exit 1
fi
URL="${1%/}"

echo Checking: ${URL}/xmlrpc.php
curl ${URL}/xmlrpc.php -k -X POST -d "<methodCall><methodName>system.listMethods</methodName><params></params></methodCall>"
