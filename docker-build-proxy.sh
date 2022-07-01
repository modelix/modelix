#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

(
  cd proxy
  docker build --no-cache -t modelix/modelix-proxy .
)

docker tag modelix/modelix-proxy:latest "modelix/modelix-proxy:${TAG}"
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes/common/proxy-deployment.yaml
rm kubernetes/common/proxy-deployment.yaml.bak

sed -i.bak -E "s/  proxy: \".*\"/  proxy: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak