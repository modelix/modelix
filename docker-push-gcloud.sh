#!/bin/sh

TAG=$(date +"%Y%m%d%H%M")

echo "Pushing tag ${TAG}"

docker tag modelix-db:latest "eu.gcr.io/webmps/modelix-db:${TAG}"
docker tag modelix-model:latest "eu.gcr.io/webmps/modelix-model:${TAG}"
docker tag modelix-mps:latest "eu.gcr.io/webmps/modelix-mps:${TAG}"
docker tag modelix-ui:latest "eu.gcr.io/webmps/modelix-ui:${TAG}"
docker tag modelix-proxy:latest "eu.gcr.io/webmps/modelix-proxy:${TAG}"

docker push "eu.gcr.io/webmps/modelix-db:${TAG}"
docker push "eu.gcr.io/webmps/modelix-model:${TAG}"
docker push "eu.gcr.io/webmps/modelix-mps:${TAG}"
docker push "eu.gcr.io/webmps/modelix-ui:${TAG}"
docker push "eu.gcr.io/webmps/modelix-proxy:${TAG}"

docker tag modelix-db:latest "eu.gcr.io/webmps/modelix-db:latest"
docker tag modelix-model:latest "eu.gcr.io/webmps/modelix-model:latest"
docker tag modelix-mps:latest "eu.gcr.io/webmps/modelix-mps:latest"
docker tag modelix-ui:latest "eu.gcr.io/webmps/modelix-ui:latest"
docker tag modelix-proxy:latest "eu.gcr.io/webmps/modelix-proxy:latest"

docker push "eu.gcr.io/webmps/modelix-db:latest"
docker push "eu.gcr.io/webmps/modelix-model:latest"
docker push "eu.gcr.io/webmps/modelix-mps:latest"
docker push "eu.gcr.io/webmps/modelix-ui:latest"
docker push "eu.gcr.io/webmps/modelix-proxy:latest"

echo "Pushed tag ${TAG}"

sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/ui-deployment.yaml
sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/model-deployment.yaml
sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/proxy-deployment.yaml
rm kubernetes/common/ui-deployment.yaml-E
rm kubernetes/common/model-deployment.yaml-E
rm kubernetes/common/proxy-deployment.yaml-E
