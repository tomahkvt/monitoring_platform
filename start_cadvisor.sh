#!/bin/bash
docker run -d --name=cadvisor -p 8081:8080 google/cadvisor:latest