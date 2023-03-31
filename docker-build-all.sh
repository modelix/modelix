#!/bin/sh

set -e
set -x

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
