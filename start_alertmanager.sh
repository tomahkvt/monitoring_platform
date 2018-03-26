#!/bin/bash
docker run --name alertmanager -d -p 9093:9093 \
-v $PWD/alertmanager/config/config.yml:/etc/alertmanager/config.yml \
-v $PWD/alertmanager/data:/alertmanager \
prom/alertmanager

