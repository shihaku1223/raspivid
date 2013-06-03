#!/bin/bash

raspivid -w 600 -h 400 -o - -t 9999999  | cvlc stream:///dev/stdin --sout udp://225.1.1.1:1234 :demux=h264 --ttl 10 --udp-caching 300 &
