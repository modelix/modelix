#!/bin/sh

cd ui-proxy
docker build --no-cache -t modelix/modelix-uiproxy .

TAG=$(date +"%Y%m%d%H%M")
cd ..
docker tag modelix/modelix-uiproxy:latest "modelix/modelix-uiproxy:${TAG}"
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes/common/uiproxy-deployment.yaml
rm kubernetes/common/uiproxy-deployment.yaml.bak
