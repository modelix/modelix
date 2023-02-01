#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

docker build --platform ${MODELIX_TARGET_PLATFORM} -f Dockerfile-workspace-manager -t modelix/modelix-workspace-manager .

docker tag modelix/modelix-workspace-manager:latest "modelix/modelix-workspace-manager:${TAG}"

sed -i.bak -E "s/  wsManager: \".*\"/  wsManager: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
