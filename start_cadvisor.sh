#!/bin/bash
docker run -d --name=cadvisor -p 8081:8080 \
 --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:rw \
  --volume=/sys:/sys:ro \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --volume=/dev/disk/:/dev/disk:ro \
  --detach=true \
  --name=cadvisor \
google/cadvisor:latest