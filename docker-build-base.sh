#!/bin/sh

TAG=$( ./modelix-version.sh )

docker build --platform ${MODELIX_TARGET_PLATFORM} --no-cache -f Dockerfile-base -t modelix/modelix-base .
docker tag modelix/modelix-base:latest "modelix/modelix-base:${TAG}"