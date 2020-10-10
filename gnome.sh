#!/bin/bash

# 從Win10端啟動XServer視窗
/mnt/c/Program\ Files/VcXsrv/vcxsrv.exe -ac -wgl -dpms -fullscreen &

# Ubuntu桌面設定
export DISPLAY="`grep nameserver /etc/resolv.conf | sed 's/nameserver //'`:0"
export XDG_SESSION_TYPE="x11"
export XDG_RUNTIME_DIR=~/.cache/xdg
export XDG_SESSION_CLASS="user"
export XDG_SESSION_DESKTOP=ubuntu
export XDG_CURRENT_DESKTOP=ubuntu:GNOME
export DESKTOP_SESSION=ubuntu
export GDMSESSION=ubuntu
export GNOME_SHELL_SESSION_MODE=ubuntu

# 啟動Ubuntu桌面
gnome-session "$@"

# 結束Ubuntu桌面後，關閉XServer視窗
/mnt/c/Windows/System32/taskkill.exe /IM vcxsrv.exe /T /F
