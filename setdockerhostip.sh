#!/bin/bash

DOCKER_HOST_IP="192.168.122.110"
find alertmanager -type  f -name \* -exec sed -i -r 's/docker_host_ip/'$DOCKER_HOST_IP'/g' {} \;
find prometheus -type f -name \* -exec sed -i -r 's/docker_host_ip/'$DOCKER_HOST_IP'/g' {} \;
find telegraf -type f -name \* -exec sed -i -r 's/docker_host_ip/'$DOCKER_HOST_IP'/g' {} \;

mdir prometheus/data
chmod o+w prometheus/data


