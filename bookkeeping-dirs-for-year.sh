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
mkdir -p ${YEAR}/incoming
mkdir -p ${YEAR}/incoming/${YEAR}-06
mkdir -p ${YEAR}/incoming/${YEAR}-12
mkdir -p ${YEAR}/incoming/${YEAR}-01
mkdir -p ${YEAR}/incoming/${YEAR}-08
mkdir -p ${YEAR}/incoming/${YEAR}-05
mkdir -p ${YEAR}/incoming/${YEAR}-10
mkdir -p ${YEAR}/incoming/${YEAR}-11
mkdir -p ${YEAR}/incoming/${YEAR}-03
mkdir -p ${YEAR}/incoming/${YEAR}-09
mkdir -p ${YEAR}/incoming/${YEAR}-07
mkdir -p ${YEAR}/incoming/${YEAR}-02

