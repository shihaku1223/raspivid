#!/bin/bash

raspivid -n -t 999999 -o - | nc 10.1.9.104 8554 &
