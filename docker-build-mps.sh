#!/bin/sh

MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

docker build --platform ${MODELIX_TARGET_PLATFORM} -f Dockerfile-mps -t modelix/modelix-mps .