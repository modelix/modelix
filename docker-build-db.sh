#!/bin/sh

TAG=$( ./modelix-version.sh )
MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

cd db
docker build --platform ${MODELIX_TARGET_PLATFORM} --no-cache -f Dockerfile -t modelix/modelix-db .

cd ..
docker tag modelix/modelix-db:latest "modelix/modelix-db:${TAG}"

sed -i.bak -E "s/  db: \".*\"/  db: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak