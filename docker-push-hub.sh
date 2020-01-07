#!/bin/sh

TAG=$(date +"%Y%m%d%H%M")

echo "Pushing tag ${TAG}"

docker tag cloudmps-db:latest "cloudmps/cloudmps-db:${TAG}"
docker tag cloudmps-model:latest "cloudmps/cloudmps-model:${TAG}"
docker tag cloudmps-mps:latest "cloudmps/cloudmps-mps:${TAG}"
docker tag cloudmps-ui:latest "cloudmps/cloudmps-ui:${TAG}"
docker tag cloudmps-proxy:latest "cloudmps/cloudmps-proxy:${TAG}"

docker push "cloudmps/cloudmps-db:${TAG}"
docker push "cloudmps/cloudmps-model:${TAG}"
docker push "cloudmps/cloudmps-mps:${TAG}"
docker push "cloudmps/cloudmps-ui:${TAG}"
docker push "cloudmps/cloudmps-proxy:${TAG}"

docker tag cloudmps-db:latest "cloudmps/cloudmps-db:latest"
docker tag cloudmps-model:latest "cloudmps/cloudmps-model:latest"
docker tag cloudmps-mps:latest "cloudmps/cloudmps-mps:latest"
docker tag cloudmps-ui:latest "cloudmps/cloudmps-ui:latest"
docker tag cloudmps-proxy:latest "cloudmps/cloudmps-proxy:latest"

docker push "cloudmps/cloudmps-db:latest"
docker push "cloudmps/cloudmps-model:latest"
docker push "cloudmps/cloudmps-mps:latest"
docker push "cloudmps/cloudmps-ui:latest"
docker push "cloudmps/cloudmps-proxy:latest"

echo "Pushed tag ${TAG}"

sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/ui-deployment.yaml
sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/model-deployment.yaml
sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/proxy-deployment.yaml
rm kubernetes/common/ui-deployment.yaml-E
rm kubernetes/common/model-deployment.yaml-E
rm kubernetes/common/proxy-deployment.yaml-E
