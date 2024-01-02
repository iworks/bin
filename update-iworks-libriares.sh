#!/usr/bin/env bash

if [ -d includes/iworks/options ]; then
    echo "Update iWorks Options"
    cd includes/iworks/options && git pull
    cd -
fi

if [ -d includes/iworks/rate ]; then
    echo "Update iWorks Rate"
    cd includes/iworks/rate && git pull
    cd -
fi
