#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

(
  cd instances-manager
  docker build --no-cache -t modelix/modelix-instances-manager .
)

docker tag modelix/modelix-instances-manager:latest "modelix/modelix-instances-manager:${TAG}"

sed -i.bak -E "s/  instancesManager: \".*\"/  instancesManager: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
