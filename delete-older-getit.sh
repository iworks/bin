#!/usr/bin/env bash
find ${HOME}/Pobrane/ -mtime +28 -print -delete;
find ${HOME}/Pobrane/ -type d -empty -print -delete
find ${HOME}/Pobrane/ -type f -empty -print -delete
