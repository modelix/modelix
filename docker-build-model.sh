#!/bin/sh

TAG=$( ./modelix-version.sh )

cd model-server
docker build --no-cache -t modelix/modelix-model .

cd ..
docker tag modelix/modelix-model:latest "modelix/modelix-model:${TAG}"
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes/common/model-deployment.yaml
rm kubernetes/common/model-deployment.yaml.bak
