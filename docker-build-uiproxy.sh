#!/bin/sh

cd ui-proxy
docker build --no-cache -t modelix/modelix-uiproxy .

TAG=$(date +"%Y%m%d%H%M")
cd ..
docker tag modelix/modelix-uiproxy:latest "modelix/modelix-uiproxy:${TAG}"
sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/uiproxy-deployment.yaml
rm kubernetes/common/uiproxy-deployment.yaml-E
