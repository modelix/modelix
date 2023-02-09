#!/bin/sh

TAG=$( ./modelix-version.sh )

docker buildx build --platform linux/amd64,linux/arm64 --push --no-cache -f Dockerfile-base \
-t modelix/modelix-base:latest -t modelix/modelix-base:${TAG} .