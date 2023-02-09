#!/bin/sh

TAG=$( ./modelix-version.sh )

cd db
docker buildx build --platform linux/amd64,linux/arm64 --push --no-cache -f Dockerfile \
-t modelix/modelix-db:latest -t modelix/modelix-db:${TAG} .

cd ..

sed -i.bak -E "s/  db: \".*\"/  db: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak