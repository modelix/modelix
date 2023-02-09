#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

docker buildx build --platform linux/amd64,linux/arm64 --push -f Dockerfile-workspace-manager \
-t modelix/modelix-workspace-manager:latest -t modelix/modelix-workspace-manager:${TAG} .

sed -i.bak -E "s/  wsManager: \".*\"/  wsManager: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
