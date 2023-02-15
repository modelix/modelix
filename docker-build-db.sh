#!/bin/sh

TAG=$( ./modelix-version.sh )

MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

cd db

if [[ -z "${MODELIX_CI}" ]]; then
  docker build --platform ${MODELIX_TARGET_PLATFORM} --no-cache -f Dockerfile \
  -t modelix/modelix-db:latest -t modelix/modelix-db:${TAG} .
else
  docker buildx build --platform linux/amd64,linux/arm64 --push --no-cache -f Dockerfile \
  -t modelix/modelix-db:latest -t modelix/modelix-db:${TAG} .
fi

cd ..

sed -i.bak -E "s/  db: \".*\"/  db: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak