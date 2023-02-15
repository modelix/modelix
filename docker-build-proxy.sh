#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

(
#  cd proxy
  if [[ -z "${MODELIX_CI}" ]]; then
    docker build --platform ${MODELIX_TARGET_PLATFORM} -f Dockerfile-proxy --no-cache \
    -t modelix/modelix-proxy:latest -t modelix/modelix-proxy:${TAG} .
  else
    docker buildx build --platform linux/amd64,linux/arm64 --push -f Dockerfile-proxy --no-cache \
    -t modelix/modelix-proxy:latest -t modelix/modelix-proxy:${TAG} .
  fi
)

sed -i.bak -E "s/  proxy: \".*\"/  proxy: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak