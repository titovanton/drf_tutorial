#!/usr/bin/env bash

# provision
export APPDIR=/app
export VAGRANTFILES=$APPDIR/vagrantfiles
export USERHOME=/home/ubuntu
export IP=$(ifconfig enp0s3 | grep "inet addr" | cut -d ':' -f 2 | cut -d ' ' -f 1)
