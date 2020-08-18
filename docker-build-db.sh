#!/bin/sh
cd db
docker build --no-cache -f Dockerfile -t modelix/modelix-db .

TAG=$(date +"%Y%m%d%H%M")
cd ..
docker tag modelix/modelix-db:latest "modelix/modelix-db:${TAG}"
sed -i -E "s/20[12][0-9][01][0-9][0123][0-9][0-5][0-9][0-5][0-9]/${TAG}/" kubernetes/local/db-deployment.yaml
rm kubernetes/local/db-deployment.yaml-E
