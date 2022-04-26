#!/bin/sh

set -e

rm -f modelix.version

./docker-build-proxy.sh
kubectl apply -f kubernetes/common/proxy-deployment.yaml -f kubernetes/common/proxy-service.yaml
