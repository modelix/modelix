#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

docker build --platform ${MODELIX_TARGET_PLATFORM} --no-cache -f Dockerfile-projector -t modelix/modelix-projector .

docker tag modelix/modelix-projector:latest "modelix/modelix-projector:${TAG}"
