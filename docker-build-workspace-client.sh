#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

docker build -f Dockerfile-workspace-client -t modelix/modelix-workspace-client .

docker tag modelix/modelix-workspace-client:latest "modelix/modelix-workspace-client:${TAG}"
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes/common/workspace-client-deployment.yaml
rm kubernetes/common/workspace-client-deployment.yaml.bak

sed -i.bak -E "s/  wsClient: \".*\"/  wsClient: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
