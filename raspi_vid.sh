#!/bin/bash

raspivid -n \
	-v \
	-ih \
	-t 0 \
	-rot 0 \
    -lev 4.2 \
    -pts $1.pts \
    -md 6 \
	-w 1280 -h 720 \
	-fps 90 -b 17000000 \
	-o $1
