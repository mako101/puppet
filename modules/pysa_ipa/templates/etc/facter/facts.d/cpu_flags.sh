#!/bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin

VAR=$(cat /proc/cpuinfo | grep flags | uniq | wc -w)

echo cpu_flags=$(echo $VAR - 2 | bc)
