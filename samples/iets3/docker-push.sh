#!/bin/sh

TAG=$(date +"%Y%m%d%H%M")

echo "Pushing tag ${TAG}"

docker tag cloudmps-iets3:latest "cloudmps/cloudmps-iets3:${TAG}"
docker push "cloudmps/cloudmps-iets3:${TAG}"
docker tag cloudmps-iets3:latest "cloudmps/cloudmps-iets3:latest"
docker push "cloudmps/cloudmps-iets3:latest"

#sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" deployment.yaml
#rm deployment.yaml-E

echo "Pushed tag ${TAG}"
