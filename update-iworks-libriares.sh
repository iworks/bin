#!/usr/bin/env bash

echo "Update iWorks Options"

cd includes/iworks/options && git pull
cd -

echo "Update iWorks Rate"
cd includes/iworks/rate && git pull
cd -
