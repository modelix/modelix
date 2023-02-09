#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

(
  cd instances-manager
  docker buildx build --platform linux/amd64,linux/arm64 --push --no-cache \
  -t modelix/modelix-instances-manager:latest -t modelix/modelix-instances-manager:${TAG} .
)

sed -i.bak -E "s/  instancesManager: \".*\"/  instancesManager: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
