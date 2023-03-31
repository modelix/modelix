#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

if [ "${CI}" = "true" ]; then
  docker buildx build --platform linux/amd64,linux/arm64 --push -f Dockerfile-workspace-manager \
  -t "modelix/modelix-workspace-manager:${TAG}" .
else
  docker build -f Dockerfile-workspace-manager \
  -t "modelix/modelix-workspace-manager:${TAG}" .
fi

sed -i.bak -E "s/  wsManager: \".*\"/  wsManager: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
