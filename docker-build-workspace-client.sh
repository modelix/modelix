#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

docker buildx build --platform linux/amd64,linux/arm64 -f Dockerfile-workspace-client -t modelix/modelix-workspace-client .

docker tag modelix/modelix-workspace-client:latest "modelix/modelix-workspace-client:${TAG}"

sed -i.bak -E "s/  wsClient: \".*\"/  wsClient: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
