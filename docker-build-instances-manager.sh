#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

(
  cd instances-manager
  docker build --no-cache -t modelix/modelix-instances-manager .
)

docker tag modelix/modelix-instances-manager:latest "modelix/modelix-instances-manager:${TAG}"
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes/common/instances-manager-deployment.yaml
rm kubernetes/common/instances-manager-deployment.yaml.bak

sed -i.bak -E "s/  instancesManager: \".*\"/  instancesManager: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
