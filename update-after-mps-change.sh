#!/bin/sh

set -e

rm -f modelix.version

./gradlew :mps:assemble
./docker-build-projector.sh
./docker-build-workspace-client.sh
kubectl apply -f kubernetes/common/workspace-client-deployment.yaml -f kubernetes/common/workspace-client-service.yaml
kubectl scale deployment/instances-manager --replicas=0
sleep 60
kubectl scale deployment/instances-manager --replicas=1
