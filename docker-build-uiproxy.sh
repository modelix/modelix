#!/bin/sh

TAG=$( ./modelix-version.sh )

cd ui-proxy
docker build --no-cache -t modelix/modelix-uiproxy .

cd ..
docker tag modelix/modelix-uiproxy:latest "modelix/modelix-uiproxy:${TAG}"
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes/common/uiproxy-deployment.yaml
rm kubernetes/common/uiproxy-deployment.yaml.bak
