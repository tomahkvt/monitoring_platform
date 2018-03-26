#!/bin/bash

docker run -d --name influxdb -p 8083:8083 -p 8086:8086 influxdb

docker run -d --name telegraf -p 9273:9273 -v $PWD/telegraf/config/telegraf.conf:/etc/telegraf/telegraf.conf:ro telegraf

