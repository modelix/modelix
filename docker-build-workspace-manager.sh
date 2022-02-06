#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

docker build -f Dockerfile-workspace-manager -t modelix/modelix-workspace-manager .

docker tag modelix/modelix-workspace-manager:latest "modelix/modelix-workspace-manager:${TAG}"
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes/common/workspace-manager-deployment.yaml
rm kubernetes/common/workspace-manager-deployment.yaml.bak
