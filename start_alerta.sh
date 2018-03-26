#!/bin/bash

docker run --name alerta-db -p 27017:27017 -d mongo

docker run --name alerta-web -e DATABASE_URL=mongodb://192.168.122.110:27017/monitoring --link alerta-db:db \
-d -p 8080:8080 alerta/alerta-web