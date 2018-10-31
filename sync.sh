#!/bin/bash -e
# Prerequisites
#   * download cygwin: https://cygwin.com/setup-x86_64.exe
#   * install it on both windows machines to C:\cygwin64
#   * add cygwin to environment variables (especially for user used for DESTINATION)
#       for example: test-user on destination machine needs to have in PATH following directory: C:\cygwin64
#       otherwise rsync will complaing that there is no rsync on remote (DEST) machine

SRC=${1:-"*"}
DST=${2:-"/cygdrive/c/out"}
REMOTE_USER=${3:-"test-user"}
REMOTE_IP=${4:-"10.10.200.132"}

rsync.exe -av $SRC ${REMOTE_USER}@${REMOTE_IP}:$DST
