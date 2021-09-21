#!/bin/bash

set -e

# read variables from mps-version.properties
while IFS='=' read -r key value
do
  echo "$key=$value"
  eval "${key}"=\${value}
done < "mps-version.properties"
echo "MPS Version: $mpsVersion"
echo "MPS Major Version: $mpsMajorVersion"
echo "MPS Minor Version: $mpsMinorVersion"

docker login -u "$DOCKER_HUB_USER" -p "$DOCKER_HUB_KEY"

./docker-build-db.sh
./docker-build-model.sh
./docker-build-mps.sh
./docker-build-base.sh
./docker-build-ui.sh
./docker-build-proxy.sh
./docker-build-uiproxy.sh

GIT_TAG="$TRAVIS_TAG"
TAGS="$GIT_TAG mps-$mpsVersion"
if [ "$mpsVersion" != "$mpsMajorVersion" ]; then
    TAGS="$TAGS mps-$mpsMajorVersion"
fi
IMAGE_NAMES="db model mps base ui proxy uiproxy"
for TAG in $TAGS ; do
  echo "Pushing Tag $TAG"

  for IMAGE_NAME in $IMAGE_NAMES ; do
    if [ "$TAG" != "latest" ]; then
      docker tag "modelix/modelix-$IMAGE_NAME:latest" "modelix/modelix-$IMAGE_NAME:${TAG}"
    fi
    docker push "modelix/modelix-$IMAGE_NAME:${TAG}"
  done
done
