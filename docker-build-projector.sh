#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

docker build --no-cache -f Dockerfile-projector -t modelix/modelix-projector .

docker tag modelix/modelix-projector:latest "modelix/modelix-projector:${TAG}"
