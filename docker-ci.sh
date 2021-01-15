#!/bin/bash

# read variables from mps-version.properties
while IFS='=' read -r key value
do
  echo "$key=$value"
  eval "${key}"=\${value}
done < "mps-version.properties"
echo "MPS Version: $mpsVersion"
echo "MPS Major Version: $mpsMajorVersion"
echo "MPS Minor Version: $mpsMinorVersion"

docker login -u "$DOCKER_HUB_USER" -p "$DOCKER_HUB_KEY"

./docker-build-db.sh
./docker-build-model.sh
./docker-build-mps.sh
./docker-build-ui.sh
./docker-build-proxy.sh
./docker-build-uiproxy.sh

GIT_TAG="$TRAVIS_TAG"
TAGS="$GIT_TAG $mpsVersion"
if [ "$mpsVersion" != "$mpsMajorVersion" ]; then
    TAGS="$TAGS $mpsMajorVersion"
fi
for TAG in $TAGS ; do
  echo "Pushing Tag $TAG"

  docker tag modelix/modelix-db:latest "modelix/modelix-db:${TAG}"
  docker tag modelix/modelix-model:latest "modelix/modelix-model:${TAG}"
  docker tag modelix/modelix-mps:latest "modelix/modelix-mps:${TAG}"
  docker tag modelix/modelix-ui:latest "modelix/modelix-ui:${TAG}"
  docker tag modelix/modelix-proxy:latest "modelix/modelix-proxy:${TAG}"
  docker tag modelix/modelix-uiproxy:latest "modelix/modelix-uiproxy:${TAG}"

  docker push "modelix/modelix-db:${TAG}"
  docker push "modelix/modelix-model:${TAG}"
  docker push "modelix/modelix-mps:${TAG}"
  docker push "modelix/modelix-ui:${TAG}"
  docker push "modelix/modelix-proxy:${TAG}"
  docker push "modelix/modelix-uiproxy:${TAG}"
done

docker push "modelix/modelix-db:latest"
docker push "modelix/modelix-model:latest"
docker push "modelix/modelix-mps:latest"
docker push "modelix/modelix-ui:latest"
docker push "modelix/modelix-proxy:latest"
docker push "modelix/modelix-uiproxy:latest"
