#!/bin/sh

TAG=$( ./modelix-version.sh )

(
  cd db || exit 1
  if [ "${CI}" = "true" ]; then
    docker buildx build --platform linux/amd64,linux/arm64 --push -f Dockerfile \
    -t "modelix/modelix-db:${TAG}" .
  else
    docker build -f Dockerfile \
    -t "modelix/modelix-db:${TAG}" .
  fi
)

sed -i.bak -E "s/  db: \".*\"/  db: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
