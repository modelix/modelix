#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

(
  cd keycloak-extensions
  docker buildx build --platform linux/amd64,linux/arm64 --push \
  -t modelix/keycloak:latest -t modelix/keycloak:${TAG} .
)

sed -i.bak -E "s/  keycloak: \".*\"/  keycloak: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
