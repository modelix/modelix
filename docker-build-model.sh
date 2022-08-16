#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

(
  cd model-server
  docker build --no-cache -t modelix/modelix-model .
)

docker tag modelix/modelix-model:latest "modelix/modelix-model:${TAG}"

sed -i.bak -E "s/  model: \".*\"/  model: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
