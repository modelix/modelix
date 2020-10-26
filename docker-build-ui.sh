#!/bin/sh

docker build --no-cache -f Dockerfile-ui -t modelix/modelix-ui .

TAG=$(date +"%Y%m%d%H%M")
docker tag modelix/modelix-ui:latest "modelix/modelix-ui:${TAG}"
sed -i -E "s/\(image:.*:\).*/\1${TAG}/" kubernetes/common/ui-deployment.yaml
rm kubernetes/common/ui-deployment.yaml-E
