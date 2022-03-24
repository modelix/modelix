#!/bin/sh

set -e

rm -f modelix.version

./gradlew :headless-mps:clean :workspace-manager:clean :workspace-manager:assemble
./docker-build-workspace-manager.sh
kubectl apply -f kubernetes/common/workspace-manager-deployment.yaml -f kubernetes/common/workspace-manager-service.yaml
