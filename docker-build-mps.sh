#!/bin/sh

MODELIX_VERSION=$( ./modelix-version.sh )

if [ "${CI}" = "true" ]; then
  docker buildx build --platform linux/amd64,linux/arm64 --push -f Dockerfile-mps \
  -t "modelix/modelix-mps:${MODELIX_VERSION}" .
else
  docker build -f Dockerfile-mps \
  -t "modelix/modelix-mps:${MODELIX_VERSION}" .
fi
