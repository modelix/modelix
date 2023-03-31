#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

(
  cd instances-manager || exit 1
  if [ "${CI}" = "true" ]; then
    docker buildx build --platform linux/amd64,linux/arm64 --push \
    -t "modelix/modelix-instances-manager:${TAG}" .
  else
    docker build --no-cache \
    -t "modelix/modelix-instances-manager:${TAG}" .
  fi
)

sed -i.bak -E "s/  instancesManager: \".*\"/  instancesManager: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
