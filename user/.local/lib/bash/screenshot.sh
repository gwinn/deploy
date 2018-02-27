#!/bin/sh

path=$HOME/Pictures/Screenshot/screenshot-$(date +"%Y-%m-%d-%T").png
import -border -frame $path && display -resize 100% $path
