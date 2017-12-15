#!/usr/bin/env  bash


docker pull 1313475/heapster-influxdb-amd64:v1.3.3
docker tag 1313475/heapster-influxdb-amd64:v1.3.3 gcr.io/google_containers/heapster-influxdb-amd64:v1.3.3
docker pull 1313475/heapster-amd64:v1.5.0-beta.2 
docker tag 1313475/heapster-amd64:v1.5.0-beta.2 gcr.io/google_containers/heapster-amd64:v1.5.0-beta.2
docker pull 1313475/heapster-grafana-amd64:v4.4.3
docker tag 1313475/heapster-grafana-amd64:v4.4.3 gcr.io/google_containers/heapster-grafana-amd64:v4.4.3
