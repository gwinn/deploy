#!/bin/bash

echo "Clear memory cache. Enter root password"
su -c 'sync; echo 3 > /proc/sys/vm/drop_caches'
echo "Done!"
