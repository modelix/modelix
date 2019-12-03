#!/bin/sh

TAG=$(date +"%Y%m%d%H%M")

echo "Pushing tag ${TAG}"

docker tag webmps-entities:latest "slisson/webmps-entities:${TAG}"
docker push "slisson/webmps-entities:${TAG}"
docker tag webmps-entities:latest "slisson/webmps-entities:latest"
docker push "slisson/webmps-entities:latest"

echo "Pushed tag ${TAG}"
