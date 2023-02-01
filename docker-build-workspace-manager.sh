#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )
MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

docker build --platform ${MODELIX_TARGET_PLATFORM} -f Dockerfile-workspace-manager -t modelix/modelix-workspace-manager .

docker tag modelix/modelix-workspace-manager:latest "modelix/modelix-workspace-manager:${TAG}"

sed -i.bak -E "s/  wsManager: \".*\"/  wsManager: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
