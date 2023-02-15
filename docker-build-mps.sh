#!/bin/sh

MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

if [[ -z "${MODELIX_CI}" ]]; then
  docker build --platform ${MODELIX_TARGET_PLATFORM} -f Dockerfile-mps -t modelix/modelix-mps .
else
  docker buildx build --platform linux/amd64,linux/arm64 --push -f Dockerfile-mps -t modelix/modelix-mps .
fi