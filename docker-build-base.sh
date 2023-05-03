#!/bin/sh

MODELIX_VERSION=$( ./modelix-version.sh )

if [ "${CI}" = "true" ]; then
  docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg MODELIX_VERSION=${MODELIX_VERSION} -f Dockerfile-base \
  -t "modelix/modelix-base:${MODELIX_VERSION}" .
else
  docker build --build-arg MODELIX_VERSION=${MODELIX_VERSION} -f Dockerfile-base \
  -t "modelix/modelix-base:${MODELIX_VERSION}" .
fi
