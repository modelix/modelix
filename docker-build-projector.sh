#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

docker buildx build --platform linux/amd64,linux/arm64 --push --no-cache -f Dockerfile-projector \
-t modelix/modelix-projector:latest -t modelix/modelix-projector:${TAG} .
