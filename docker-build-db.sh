#!/bin/sh
cd db
docker build --no-cache -f Dockerfile -t modelix/modelix-db .

TAG=$(date +"%Y%m%d%H%M")
cd ..
docker tag modelix/modelix-db:latest "modelix/modelix-db:${TAG}"
sed -i -E "s/\(image:.*:\).*/\1${TAG}/" kubernetes/local/db-deployment.yaml
rm kubernetes/local/db-deployment.yaml-E
