#!/usr/bin/env bash
echo "stopping existing services"
sh stop.sh
echo "build"
sh build.sh
echo "staring existing services"
sh start.sh