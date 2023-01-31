#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

(
  cd keycloak-extensions
  docker build -t modelix/keycloak .
)

docker tag modelix/keycloak:latest "modelix/keycloak:${TAG}"

sed -i.bak -E "s/  keycloak: \".*\"/  keycloak: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
