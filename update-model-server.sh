#!/bin/sh

set -e

rm -f modelix.version

./gradlew :model-server:assemble
./docker-build-model.sh
kubectl apply -f kubernetes/common/model-deployment.yaml -f kubernetes/common/model-service.yaml
