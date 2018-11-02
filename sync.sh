#!/bin/bash -e
# Prerequisites
#   * download cygwin: https://cygwin.com/setup-x86_64.exe
#   * install it on both windows machines to C:\cygwin64
#   * add cygwin to environment variables (especially for user used for DESTINATION)
#       for example: test-user on destination machine needs to have in PATH following directory: C:\cygwin64\bin
#       otherwise rsync will complaing that there is no rsync on remote (DEST) machine
#   * create the .ssh folder in user home directory
#     $ md C:\Users\%username%\.ssh
#   * run ssh-copy-id from client machine against remote to add public key
#     $ ssh-copy-id test-user@10.10.200.132
#   * or add your public key manually
#     1) clinet -> $ cat ~/.ssh/id_rsa.pub
#     2) server -> create C:\Users\%username%\.ssh\authorized_keys and open it
#     3) server -> copy returned content of first command (clinet -> $ cat ~/.ssh/id_rsa.pub) to authorized_keys and save it

SRC=${1:-"*"}
DST=${2:-"/cygdrive/c/out"}
REMOTE_USER=${3:-"test-user"}
REMOTE_IP=${4:-"10.10.200.132"}

rsync.exe -av $SRC ${REMOTE_USER}@${REMOTE_IP}:$DST
