#!/bin/sh

docker buildx build --platform linux/amd64,linux/arm64 -f Dockerfile-mps -t modelix/modelix-mps .

