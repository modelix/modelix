#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

(
  cd keycloak-extensions || exit 1
  if [ "${CI}" = "true" ]; then
    docker buildx build --platform linux/amd64,linux/arm64 --push \
    -t "modelix/keycloak:${TAG}" .
  else
    docker build \
    -t "modelix/keycloak:${TAG}" .
  fi
)

sed -i.bak -E "s/  keycloak: \".*\"/  keycloak: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
