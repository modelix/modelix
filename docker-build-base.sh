#!/bin/sh

TAG=$( ./modelix-version.sh )
MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

if [ "${CI}" = "true" ]; then
  docker buildx build --platform linux/amd64,linux/arm64 --push --no-cache -f Dockerfile-base \
  -t modelix/modelix-base:latest -t "modelix/modelix-base:${TAG}" .
else
  docker build --platform "${MODELIX_TARGET_PLATFORM}" --no-cache -f Dockerfile-base \
  -t modelix/modelix-base:latest -t "modelix/modelix-base:${TAG}" .
fi
