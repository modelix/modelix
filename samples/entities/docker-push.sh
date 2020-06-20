#!/bin/sh

TAG=$(date +"%Y%m%d%H%M")

echo "Pushing tag ${TAG}"

docker tag modelix-entities:latest "modelix/modelix-entities:${TAG}"
docker push "modelix/modelix-entities:${TAG}"
docker tag modelix-entities:latest "modelix/modelix-entities:latest"
docker push "modelix/modelix-entities:latest"

sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" deployment.yaml
rm deployment.yaml-E

echo "Pushed tag ${TAG}"
