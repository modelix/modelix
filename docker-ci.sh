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
./docker-build-mps.sh
./docker-build-base.sh
./docker-build-ui.sh
./docker-build-projector-base.sh
./docker-build-projector.sh
./docker-build-proxy.sh
./docker-build-uiproxy.sh
./docker-build-instances-manager.sh
./docker-build-workspace-manager.sh
./docker-build-workspace-client.sh
./docker-build-keycloak.sh

MODELIX_VERSION=$( ./modelix-version.sh )
TAGS="$MODELIX_VERSION mps-$mpsVersion"
if [ "$mpsVersion" != "$mpsMajorVersion" ]; then
    TAGS="$TAGS mps-$mpsMajorVersion"
fi
IMAGE_NAMES="modelix-db modelix-mps modelix-base modelix-ui modelix-projector modelix-proxy modelix-uiproxy modelix-instances-manager modelix-workspace-manager modelix-workspace-client keycloak"
for TAG in $TAGS ; do
  echo "Pushing Tag $TAG"

  for IMAGE_NAME in $IMAGE_NAMES ; do
    if [ "$TAG" != "latest" ]; then
      docker tag "modelix/$IMAGE_NAME:latest" "modelix/$IMAGE_NAME:${TAG}"
    fi
    docker push "modelix/$IMAGE_NAME:${TAG}"
  done
done
