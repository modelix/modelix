#!/bin/sh

./docker-build-db.sh
./docker-build-model.sh
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
