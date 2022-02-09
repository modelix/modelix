#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

docker build --no-cache -f Dockerfile-projector -t modelix/modelix-projector .

docker tag modelix/modelix-projector:latest "modelix/modelix-projector:${TAG}"

sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes/common/projector-deployment.yaml
rm kubernetes/common/projector-deployment.yaml.bak
