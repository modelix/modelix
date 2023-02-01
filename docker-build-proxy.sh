#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

(
#  cd proxy
  docker build --platform ${MODELIX_TARGET_PLATFORM} -f Dockerfile-proxy --no-cache -t modelix/modelix-proxy .
)

docker tag modelix/modelix-proxy:latest "modelix/modelix-proxy:${TAG}"

sed -i.bak -E "s/  proxy: \".*\"/  proxy: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak