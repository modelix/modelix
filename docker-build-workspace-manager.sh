#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

if [ "${CI}" = "true" ]; then
  docker buildx build --platform linux/amd64,linux/arm64 --push -f Dockerfile-workspace-manager \
  -t modelix/modelix-workspace-manager:latest -t "modelix/modelix-workspace-manager:${TAG}" .
else
  docker build --platform "${MODELIX_TARGET_PLATFORM}" -f Dockerfile-workspace-manager \
  -t modelix/modelix-workspace-manager:latest -t "modelix/modelix-workspace-manager:${TAG}" .
fi

sed -i.bak -E "s/  wsManager: \".*\"/  wsManager: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
