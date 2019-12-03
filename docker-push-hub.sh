#!/bin/sh

TAG=$(date +"%Y%m%d%H%M")

echo "Pushing tag ${TAG}"

docker tag webmps-db:latest "slisson/webmps-db:${TAG}"
docker tag webmps-model:latest "slisson/webmps-model:${TAG}"
docker tag webmps-mps:latest "slisson/webmps-mps:${TAG}"
docker tag webmps-ui:latest "slisson/webmps-ui:${TAG}"
docker tag webmps-proxy:latest "slisson/webmps-proxy:${TAG}"

docker push "slisson/webmps-db:${TAG}"
docker push "slisson/webmps-model:${TAG}"
docker push "slisson/webmps-mps:${TAG}"
docker push "slisson/webmps-ui:${TAG}"
docker push "slisson/webmps-proxy:${TAG}"

docker tag webmps-db:latest "slisson/webmps-db:latest"
docker tag webmps-model:latest "slisson/webmps-model:latest"
docker tag webmps-mps:latest "slisson/webmps-mps:latest"
docker tag webmps-ui:latest "slisson/webmps-ui:latest"
docker tag webmps-proxy:latest "slisson/webmps-proxy:latest"

docker push "slisson/webmps-db:latest"
docker push "slisson/webmps-model:latest"
docker push "slisson/webmps-mps:latest"
docker push "slisson/webmps-ui:latest"
docker push "slisson/webmps-proxy:latest"

echo "Pushed tag ${TAG}"

sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/ui-deployment.yaml
sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/model-deployment.yaml
sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/proxy-deployment.yaml
rm kubernetes/common/ui-deployment.yaml-E
rm kubernetes/common/model-deployment.yaml-E
rm kubernetes/common/proxy-deployment.yaml-E
