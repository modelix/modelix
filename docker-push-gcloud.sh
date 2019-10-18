#!/bin/sh

TAG=$(date +"%Y%m%d%H%M")

echo "Pushing tag ${TAG}"

docker tag webmps-db "eu.gcr.io/webmps/webmps-db:${TAG}"
docker tag webmps-model "eu.gcr.io/webmps/webmps-model:${TAG}"
docker tag webmps-ui "eu.gcr.io/webmps/webmps-mps:${TAG}"
docker tag webmps-ui "eu.gcr.io/webmps/webmps-ui:${TAG}"

docker push "eu.gcr.io/webmps/webmps-db:${TAG}"
docker push "eu.gcr.io/webmps/webmps-model:${TAG}"
docker push "eu.gcr.io/webmps/webmps-mps:${TAG}"
docker push "eu.gcr.io/webmps/webmps-ui:${TAG}"

docker tag webmps-db "eu.gcr.io/webmps/webmps-db:latest"
docker tag webmps-model "eu.gcr.io/webmps/webmps-model:latest"
docker tag webmps-ui "eu.gcr.io/webmps/webmps-mps:latest"
docker tag webmps-ui "eu.gcr.io/webmps/webmps-ui:latest"

docker push "eu.gcr.io/webmps/webmps-db:latest"
docker push "eu.gcr.io/webmps/webmps-model:latest"
docker push "eu.gcr.io/webmps/webmps-mps:latest"
docker push "eu.gcr.io/webmps/webmps-ui:latest"

echo "Pushed tag ${TAG}"

sed -i -E "s/20[12][0-9][01][0-9][012][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/ui-deployment.yaml
sed -i -E "s/20[12][0-9][01][0-9][012][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/model-deployment.yaml
