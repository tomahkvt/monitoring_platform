#!/bin/bash


docker run -d --name telegraf -p 9273:9273 -v $PWD/telegraf/config/telegraf.conf:/etc/telegraf/telegraf.conf:ro telegraf

