#!/bin/sh

kubectx gcloud
unset DOCKER_TLS_VERIFY
unset DOCKER_HOST
unset DOCKER_CERT_PATH

./docker-build-all.sh
./docker-push-hub.sh

./kubernetes-apply-gcloud.sh