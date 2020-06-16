#!/bin/sh

TAG=$(date +"%Y%m%d%H%M")

echo "Pushing tag ${TAG}"

docker tag modelix-db:latest "modelix/modelix-db:${TAG}"
docker tag modelix-model:latest "modelix/modelix-model:${TAG}"
docker tag modelix-mps:latest "modelix/modelix-mps:${TAG}"
docker tag modelix-ui:latest "modelix/modelix-ui:${TAG}"
docker tag modelix-proxy:latest "modelix/modelix-proxy:${TAG}"

docker push "modelix/modelix-db:${TAG}"
docker push "modelix/modelix-model:${TAG}"
docker push "modelix/modelix-mps:${TAG}"
docker push "modelix/modelix-ui:${TAG}"
docker push "modelix/modelix-proxy:${TAG}"

docker tag modelix-db:latest "modelix/modelix-db:latest"
docker tag modelix-model:latest "modelix/modelix-model:latest"
docker tag modelix-mps:latest "modelix/modelix-mps:latest"
docker tag modelix-ui:latest "modelix/modelix-ui:latest"
docker tag modelix-proxy:latest "modelix/modelix-proxy:latest"

docker push "modelix/modelix-db:latest"
docker push "modelix/modelix-model:latest"
docker push "modelix/modelix-mps:latest"
docker push "modelix/modelix-ui:latest"
docker push "modelix/modelix-proxy:latest"

echo "Pushed tag ${TAG}"

sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/ui-deployment.yaml
sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/model-deployment.yaml
sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/common/proxy-deployment.yaml
rm kubernetes/common/ui-deployment.yaml-E
rm kubernetes/common/model-deployment.yaml-E
rm kubernetes/common/proxy-deployment.yaml-E
