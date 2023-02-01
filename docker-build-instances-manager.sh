#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )
MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

(
  cd instances-manager
  docker build --platform ${MODELIX_TARGET_PLATFORM} --no-cache -t modelix/modelix-instances-manager .
)

docker tag modelix/modelix-instances-manager:latest "modelix/modelix-instances-manager:${TAG}"

sed -i.bak -E "s/  instancesManager: \".*\"/  instancesManager: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
