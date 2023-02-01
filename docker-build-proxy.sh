#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )
MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

(
#  cd proxy
  docker build --platform ${MODELIX_TARGET_PLATFORM} -f Dockerfile-proxy --no-cache -t modelix/modelix-proxy .
)

docker tag modelix/modelix-proxy:latest "modelix/modelix-proxy:${TAG}"

sed -i.bak -E "s/  proxy: \".*\"/  proxy: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak