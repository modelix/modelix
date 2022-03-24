#!/bin/sh

set -e

rm -f modelix.version

./gradlew :instances-manager:clean :instances-manager:assemble
./docker-build-instances-manager.sh
kubectl apply -f kubernetes/common/instances-manager-deployment.yaml -f kubernetes/common/instances-manager-service.yaml
