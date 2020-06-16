#!/bin/sh

kubectx minikube
eval $(minikube docker-env)
./docker-build-all.sh
docker tag modelix-ui modelix/modelix-ui
docker tag modelix-model modelix/modelix-model
docker tag modelix-db modelix/modelix-db
./kubernetes-apply-local.sh