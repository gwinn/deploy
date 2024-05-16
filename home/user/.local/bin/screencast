#!/bin/sh

output_dir=$HOME/Desktop

ffmpeg -f x11grab -r 30 -s 1600x900 -i :0.0 -vcodec libx264 -qscale 0 $output_dir/raw.mkv
ffmpeg -an -i $output_dir/raw.mkv -vcodec libvpx -b 3900k -s 1600x900 -threads 4 -y $output_dir/video.webm
ffmpeg -an -i $output_dir/raw.mkv -vcodec copy -acodec copy $output_dir/video.mp4

