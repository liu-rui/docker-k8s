#!/usr/bin/env  bash

local_repo="1313475"
target_repo="gcr.io/google-containers"

images=("pause-amd64:3.0"
    "k8s-dns-dnsmasq-nanny-amd64:1.14.5"
    "k8s-dns-kube-dns-amd64:1.14.5"
    "k8s-dns-sidecar-amd64:1.14.5"
    "kube-addon-manager:v6.4-beta.2"
    "kubernetes-dashboard-amd64:v1.8.0"
    "heapster-amd64:v1.5.0-beta.2"
    "heapster-influxdb-amd64:v1.3.3"
    "heapster-grafana-amd64:v4.4.3"    
    "storage-provisioner:v1.8.1"
    "elasticsearch:v5.6.2"
    "fluentd-elasticsearch:v2.0.2"
    "defaultbackend:1.4"
)

for image in ${images[@]}; do
    docker pull ${local_repo}/${image} \
    && docker tag ${local_repo}/${image} ${target_repo}/${image}
done