#!/bin/bash

raspivid -n -t 0 -o - | nc $1 8554 &
