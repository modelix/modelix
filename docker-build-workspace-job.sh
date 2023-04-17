#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

if [ "${CI}" = "true" ]; then
  docker buildx build --platform linux/amd64,linux/arm64 --push -f Dockerfile-workspace-job \
  -t "modelix/workspace-job:${TAG}" .
else
  docker build -f Dockerfile-workspace-job \
  -t "modelix/workspace-job:${TAG}" .
fi

sed -i.bak -E "s/  wsJob: \".*\"/  wsJob: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
