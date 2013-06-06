#!/bin/bash

raspivid  -o - -t 0  | \
	cvlc stream:///dev/stdin --sout udp://225.1.1.1:1234 :demux=h264 --ttl 10 &
