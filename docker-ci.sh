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
./docker-build-projector-mps.sh
./docker-build-projector-base.sh
./docker-build-projector.sh
./docker-build-proxy.sh
./docker-build-instances-manager.sh
./docker-build-workspace-manager.sh
./docker-build-workspace-client.sh
./docker-build-keycloak.sh
