#!/usr/bin/env bash

OPTS="--partial --progress -rzv"

rsync ${OPTS} /home/ /media/illi/illi-backup/home/
rsync ${OPTS} /var/ /media/illi/illi-backup/var/
rsync ${OPTS} /etc/ /media/illi/illi-backup/etc/
