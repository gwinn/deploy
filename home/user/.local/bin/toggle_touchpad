#!/usr/bin/env sh

DEVID=`xinput list | grep PS | awk '{print substr($6, 4)}'`

if [ "$1" = 1 ] || [ "$1" = 0 ]; then
    xinput set-prop $DEVID "Device Enabled" $1

    if [ "$1" = 1 ]; then
        STATUS="enabled"
    else
        STATUS="disabled"
    fi
else
    echo "Usage: toggle_touchpad.sh [0|1]"
fi
