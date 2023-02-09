#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

(
#  cd proxy
  docker buildx build --platform linux/amd64,linux/arm64 --push -f Dockerfile-proxy --no-cache \
  -t modelix/modelix-proxy:latest -t modelix/modelix-proxy:${TAG} .
)

sed -i.bak -E "s/  proxy: \".*\"/  proxy: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak