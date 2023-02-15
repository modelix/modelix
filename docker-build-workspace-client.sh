#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

if [[ -z "${MODELIX_CI}" ]]; then
  docker build --platform ${MODELIX_TARGET_PLATFORM} -f Dockerfile-workspace-client \
  -t modelix/modelix-workspace-client:latest -t modelix/modelix-workspace-client:${TAG} .
else
  docker buildx build --platform linux/amd64,linux/arm64 --push -f Dockerfile-workspace-client \
  -t modelix/modelix-workspace-client:latest -t modelix/modelix-workspace-client:${TAG} .
fi

sed -i.bak -E "s/  wsClient: \".*\"/  wsClient: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
