#!/bin/bash

FFMPEG_LOCATION=/home/pi/packages/ffmpeg-2.1

raspivid -w 960 -h 540 -t 0 -fps 30 -vf -o - | \
	$FFMPEG_LOCATION/ffmpeg -i - -vcodec copy -an -f flv \
	-metadata streamName=myStream tcp://0.0.0.0:6666
