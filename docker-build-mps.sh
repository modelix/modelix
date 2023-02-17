#!/bin/sh

MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"
MPS_TAG=$( ./mps-version.sh )

if [ "${CI}" = "true" ]; then
  docker buildx build --platform linux/amd64,linux/arm64 --push -f Dockerfile-mps \
  -t modelix/modelix-mps:latest -t "modelix/modelix-mps:${MPS_TAG}" .
else
  docker build --platform "${MODELIX_TARGET_PLATFORM}" -f Dockerfile-mps \
  -t modelix/modelix-mps:latest -t "modelix/modelix-mps:${MPS_TAG}" .
fi
