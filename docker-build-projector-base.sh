#!/bin/sh

set -e

MPS_VERSION=$( ./mps-version.sh )

# read variables from mps-version.properties
while IFS='=' read -r key value
do
  echo "$key=$value"
  eval "${key}"=\${value}
done < "mps-version.properties"
echo "MPS Version: $mpsVersion"
echo "MPS Major Version: $mpsMajorVersion"
echo "MPS Minor Version: $mpsMinorVersion"

if [ "${CI}" = "true" ]; then
  docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg MPS_VERSION=${mpsVersion} -f Dockerfile-projector-base \
  -t "modelix/modelix-projector-base:${MPS_VERSION}" .
else
  docker build --build-arg MPS_VERSION=${mpsVersion} -f Dockerfile-projector-base \
  -t "modelix/modelix-projector-base:${MPS_VERSION}" .
fi
