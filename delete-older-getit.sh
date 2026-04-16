#!/usr/bin/env bash
find ${HOME}/Downloads/ -mtime +28 -print -delete;
find ${HOME}/Downloads/ -type d -empty -print -delete
find ${HOME}/Downloads/ -type f -empty -print -delete
