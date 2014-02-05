#!/bin/sh
if [[ "`hostname -s`" = "cmaster" ]]; then
    exec i3
else
    exec startfluxbox
fi

