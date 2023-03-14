#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )
MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

(
  cd instances-manager || exit 1
  if [ "${CI}" = "true" ]; then
    docker buildx build --platform linux/amd64,linux/arm64 --push --no-cache \
    -t modelix/modelix-instances-manager:latest -t "modelix/modelix-instances-manager:${TAG}" .
  else
    docker build --platform "${MODELIX_TARGET_PLATFORM}" --no-cache \
    -t modelix/modelix-instances-manager:latest -t "modelix/modelix-instances-manager:${TAG}" .
  fi
)

sed -i.bak -E "s/  instancesManager: \".*\"/  instancesManager: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
