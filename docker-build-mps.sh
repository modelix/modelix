#!/bin/sh

docker build --platform ${MODELIX_TARGET_PLATFORM} -f Dockerfile-mps -t modelix/modelix-mps .