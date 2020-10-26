#!/bin/sh

cd model-server
docker build --no-cache -t modelix/modelix-model .

TAG=$(date +"%Y%m%d%H%M")
cd ..
docker tag modelix/modelix-model:latest "modelix/modelix-model:${TAG}"
sed -i -E "s/\(image:.*:\).*/\1${TAG}/" kubernetes/common/model-deployment.yaml
rm kubernetes/common/model-deployment.yaml-E
