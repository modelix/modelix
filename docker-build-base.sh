#!/bin/sh

TAG=$( ./modelix-version.sh )

docker build --platform=linux/amd64 --no-cache -f Dockerfile-base -t modelix/modelix-base .
docker tag modelix/modelix-base:latest "modelix/modelix-base:${TAG}"