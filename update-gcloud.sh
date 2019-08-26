#!/bin/sh

kubectx gcloud
unset DOCKER_TLS_VERIFY
unset DOCKER_HOST
unset DOCKER_CERT_PATH

./docker-build-all.sh

docker tag webmps-ui eu.gcr.io/cloudmps-250805/webmps-ui
docker tag webmps-model eu.gcr.io/cloudmps-250805/webmps-model
docker tag webmps-db eu.gcr.io/cloudmps-250805/webmps-db

docker push eu.gcr.io/cloudmps-250805/webmps-db
docker push eu.gcr.io/cloudmps-250805/webmps-model
docker push eu.gcr.io/cloudmps-250805/webmps-ui

./kubernetes-apply-gcloud.sh