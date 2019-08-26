#!/bin/sh

kubectx gcloud
export DOCKER_TLS_VERIFY="0"
export DOCKER_HOST="unix:///var/run/docker.sock"
./docker-build-all.sh
docker tag webmps-ui eu.gcr.io/cloudmps-250805/webmps-ui
docker tag webmps-model eu.gcr.io/cloudmps-250805/webmps-model
docker tag webmps-db eu.gcr.io/cloudmps-250805/webmps-db
./kubernetes-apply-gcloud.sh