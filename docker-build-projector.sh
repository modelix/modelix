#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )
MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

docker build --platform ${MODELIX_TARGET_PLATFORM} --no-cache -f Dockerfile-projector -t modelix/modelix-projector .

docker tag modelix/modelix-projector:latest "modelix/modelix-projector:${TAG}"
