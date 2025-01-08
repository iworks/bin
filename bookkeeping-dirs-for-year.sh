#!/usr/bin/env bash

if [ -z "$1" ]
then
    echo "No argument supplied"
    echo "usage $0 year"
    exit
fi

YEAR=${1}

mkdir -p ${YEAR}/pdf
mkdir -p ${YEAR}/jpk
mkdir -p ${YEAR}/inncoming
mkdir -p ${YEAR}/inncoming/${YEAR}-06
mkdir -p ${YEAR}/inncoming/${YEAR}-12
mkdir -p ${YEAR}/inncoming/${YEAR}-01
mkdir -p ${YEAR}/inncoming/${YEAR}-08
mkdir -p ${YEAR}/inncoming/${YEAR}-05
mkdir -p ${YEAR}/inncoming/${YEAR}-10
mkdir -p ${YEAR}/inncoming/${YEAR}-11
mkdir -p ${YEAR}/inncoming/${YEAR}-03
mkdir -p ${YEAR}/inncoming/${YEAR}-09
mkdir -p ${YEAR}/inncoming/${YEAR}-07
mkdir -p ${YEAR}/inncoming/${YEAR}-02

