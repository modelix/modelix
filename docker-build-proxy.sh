#!/bin/sh

cd proxy
docker build --no-cache -t modelix/modelix-proxy .

TAG=$(date +"%Y%m%d%H%M")
cd ..
docker tag modelix/modelix-proxy:latest "modelix/modelix-proxy:${TAG}"
sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/proxy-deployment.yaml
rm kubernetes/common/proxy-deployment.yaml-E
