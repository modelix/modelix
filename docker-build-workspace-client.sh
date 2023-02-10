#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )
MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

docker build --platform ${MODELIX_TARGET_PLATFORM} -f Dockerfile-workspace-client -t modelix/modelix-workspace-client .

docker tag modelix/modelix-workspace-client:latest "modelix/modelix-workspace-client:${TAG}"

sed -i.bak -E "s/  wsClient: \".*\"/  wsClient: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
