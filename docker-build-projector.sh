#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

docker buildx build --platform linux/amd64,linux/arm64 --no-cache -f Dockerfile-projector -t modelix/modelix-projector .

docker tag modelix/modelix-projector:latest "modelix/modelix-projector:${TAG}"
