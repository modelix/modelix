#!/bin/sh

kubectx minikube
eval $(minikube docker-env)
./docker-build-all.sh
docker tag webmps-ui eu.gcr.io/cloudmps-250805/webmps-ui
docker tag webmps-model eu.gcr.io/cloudmps-250805/webmps-model
docker tag webmps-db eu.gcr.io/cloudmps-250805/webmps-db
./kubernetes-apply-local.sh