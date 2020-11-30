#!/bin/bash

BASEDIR=$(realpath "$BASH_SOURCE")
BASEDIR=$(dirname "$BASEDIR")
bash "$BASEDIR/ubuntu-wsl2-systemd-script.sh"
sudo apt update
sudo apt install ubuntu-desktop
sudo chown -R $USER:$USER ~/.cache
