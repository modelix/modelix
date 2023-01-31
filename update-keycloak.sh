#!/bin/sh

set -e

rm -f modelix.version

./gradlew :keycloak-extensions:clean :keycloak-extensions:assemble
./docker-build-keycloak.sh
(
  cd helm
  ./upgrade.sh
)
