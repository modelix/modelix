#!/bin/sh

set -e

MODELIX_VERSION=$( ./modelix-version.sh )

if [ "${CI}" = "true" ]; then
  docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg MODELIX_VERSION=${MODELIX_VERSION} -f Dockerfile-workspace-client \
  -t "modelix/modelix-workspace-client:${MODELIX_VERSION}" .
else
  docker build --build-arg MODELIX_VERSION=${MODELIX_VERSION} -f Dockerfile-workspace-client \
  -t "modelix/modelix-workspace-client:${MODELIX_VERSION}" .
fi

sed -i.bak -E "s/  wsClient: \".*\"/  wsClient: \"${MODELIX_VERSION}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
