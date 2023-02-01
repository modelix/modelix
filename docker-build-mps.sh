#!/bin/sh

docker build --platform=linux/amd64 -f Dockerfile-mps -t modelix/modelix-mps .