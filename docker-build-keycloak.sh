#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )
MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

(
  cd keycloak-extensions || exit 1
  if [ "${CI}" = "true" ]; then
    docker buildx build --platform linux/amd64,linux/arm64 --push \
    -t modelix/keycloak:latest -t "modelix/keycloak:${TAG}" .
  else
    docker build --platform "${MODELIX_TARGET_PLATFORM}" \
    -t modelix/keycloak:latest -t "modelix/keycloak:${TAG}" .
  fi
)

sed -i.bak -E "s/  keycloak: \".*\"/  keycloak: \"${TAG}\"/" helm/dev.yaml
rm helm/dev.yaml.bak
