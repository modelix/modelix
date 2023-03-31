#!/bin/sh

set -e

MPS_VERSION=$( ./mps-version.sh )
MODELIX_VERSION=$( ./modelix-version.sh )

if [ "${CI}" = "true" ]; then
  docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg MPS_VERSION=${MPS_VERSION} -f Dockerfile-projector \
  -t "modelix/modelix-projector:${MODELIX_VERSION}" .
else
  docker build --build-arg MPS_VERSION=${MPS_VERSION} -f Dockerfile-projector \
  -t "modelix/modelix-projector:${MODELIX_VERSION}" .
fi
