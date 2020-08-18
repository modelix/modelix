#!/bin/sh

docker build --no-cache -f Dockerfile-ui -t modelix/modelix-ui .

TAG=$(date +"%Y%m%d%H%M")
docker tag modelix/modelix-ui:latest "modelix/modelix-ui:${TAG}"
sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/ui-deployment.yaml
rm kubernetes/common/ui-deployment.yaml-E
