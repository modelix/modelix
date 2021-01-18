#!/bin/sh

TAG=$( ./modelix-version.sh )

cd db
docker build --no-cache -f Dockerfile -t modelix/modelix-db .

cd ..
docker tag modelix/modelix-db:latest "modelix/modelix-db:${TAG}"
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes/local/db-deployment.yaml
rm kubernetes/local/db-deployment.yaml.bak
