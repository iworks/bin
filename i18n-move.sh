#!/usr/bin/env bash
if [ -z "$1" ]
then
    echo "No argument supplied"
    echo "usage $0 'Plugin Name'"
    exit
fi

DIR=.
PLUGIN=${1}

#
# stable
#
if test -f ${DIR}/wp-plugins-${PLUGIN}-stable-nl.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-stable-nl.po ${DIR}/${PLUGIN}-nl_NL.po
fi

if test -f ${DIR}/wp-plugins-${PLUGIN}-stable-sv.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-stable-sv.po ${DIR}/${PLUGIN}-sv_SE.po
fi

if test -f ${DIR}/wp-plugins-${PLUGIN}-stable-pl.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-stable-pl.po ${DIR}/${PLUGIN}-pl_PL.po
fi

if test -f ${DIR}/wp-plugins-${PLUGIN}-stable-ro.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-stable-ro.po ${DIR}/${PLUGIN}-ro_RO.po
fi

if test -f ${DIR}/wp-plugins-${PLUGIN}-stable-uk.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-stable-uk.po ${DIR}/${PLUGIN}-uk.po
fi

if test -f ${DIR}/wp-plugins-${PLUGIN}-stable-zh-tw.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-stable-zh-tw.po ${DIR}/${PLUGIN}-zh_TW.po
fi

if test -f ${DIR}/wp-plugins-${PLUGIN}-stable-ar.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-stable-ar.po ${DIR}/${PLUGIN}-ar_AR.po
fi

#
# dev
#
if test -f ${DIR}/wp-plugins-${PLUGIN}-dev-nl.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-dev-nl.po ${DIR}/${PLUGIN}-nl_NL.po
fi

if test -f ${DIR}/wp-plugins-${PLUGIN}-dev-sv.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-dev-sv.po ${DIR}/${PLUGIN}-sv_SE.po
fi

if test -f ${DIR}/wp-plugins-${PLUGIN}-dev-pl.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-dev-pl.po ${DIR}/${PLUGIN}-pl_PL.po
fi

if test -f ${DIR}/wp-plugins-${PLUGIN}-dev-ro.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-dev-ro.po ${DIR}/${PLUGIN}-ro_RO.po
fi

if test -f ${DIR}/wp-plugins-${PLUGIN}-dev-uk.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-dev-uk.po ${DIR}/${PLUGIN}-uk.po
fi

if test -f ${DIR}/wp-plugins-${PLUGIN}-dev-zh-tw.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-dev-zh-tw.po ${DIR}/${PLUGIN}-zh_TW.po
fi

if test -f ${DIR}/wp-plugins-${PLUGIN}-dev-ar.po; then
    mv ${DIR}/wp-plugins-${PLUGIN}-dev-ar.po ${DIR}/${PLUGIN}-ar_AR.po
fi

