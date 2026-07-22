#!/usr/bin/env bash

if [ -z "$1" ]
then
    echo "No argument supplied"
    echo "usage $0 year"
    exit
fi

YEAR=${1}

#mkdir -p ${YEAR}/pdf
mkdir -p ${YEAR}/jpk
mkdir -p ${YEAR}/${YEAR}-01/incoming
mkdir -p ${YEAR}/${YEAR}-02/incoming
mkdir -p ${YEAR}/${YEAR}-03/incoming
mkdir -p ${YEAR}/${YEAR}-04/incoming
mkdir -p ${YEAR}/${YEAR}-05/incoming
mkdir -p ${YEAR}/${YEAR}-06/incoming
mkdir -p ${YEAR}/${YEAR}-07/incoming
mkdir -p ${YEAR}/${YEAR}-08/incoming
mkdir -p ${YEAR}/${YEAR}-09/incoming
mkdir -p ${YEAR}/${YEAR}-10/incoming
mkdir -p ${YEAR}/${YEAR}-11/incoming
mkdir -p ${YEAR}/${YEAR}-12/incoming

mkdir -p ${YEAR}/${YEAR}-01/outgoing
mkdir -p ${YEAR}/${YEAR}-02/outgoing
mkdir -p ${YEAR}/${YEAR}-03/outgoing
mkdir -p ${YEAR}/${YEAR}-04/outgoing
mkdir -p ${YEAR}/${YEAR}-05/outgoing
mkdir -p ${YEAR}/${YEAR}-06/outgoing
mkdir -p ${YEAR}/${YEAR}-07/outgoing
mkdir -p ${YEAR}/${YEAR}-08/outgoing
mkdir -p ${YEAR}/${YEAR}-09/outgoing
mkdir -p ${YEAR}/${YEAR}-10/outgoing
mkdir -p ${YEAR}/${YEAR}-11/outgoing
mkdir -p ${YEAR}/${YEAR}-12/outgoing


