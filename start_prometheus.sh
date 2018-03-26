#!/bin/bash
docker run -d --name "prometheus" -p 9090:9090 \
-v $PWD/prometheus/config:/etc/prometheus \
-v $PWD/prometheus/data:/prometheus \
prom/prometheus