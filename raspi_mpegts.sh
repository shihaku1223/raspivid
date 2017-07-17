#!/bin/bash

FFMPEG_BIN=~/git/ffmpeg/ffmpeg

raspivid -n \
	-v \
	-ih \
	-t 0 \
	-rot 0 \
    -pf main \
    -lev 4.2 \
    -pts out.pts \
    -md 6 \
	-w 1280 -h 720 \
	-fps 90 -b 17000000 \
	-o - |
    $FFMPEG_BIN -i - \
    -codec copy \
    -f mpegts \
    -r 90 \
    -mpegts_original_network_id 0x1000 \
    -mpegts_transport_stream_id 0x1000 \
    -mpegts_service_id 0x7788 \
    -mpegts_pmt_start_pid 0x1500 \
    -mpegts_start_pid 0x150 \
    -metadata service_provider="KINA-PI" \
    -metadata service_name="KINA-PI" \
    out.ts
