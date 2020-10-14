#!/bin/bash

BASEDIR=$(dirname "$0")
bash $BASEDIR/ubuntu-wsl2-systemd-script.sh
sudo apt update
sudo apt install ubuntu-desktop
sudo chown -R $USER:$USER ~/.cache
