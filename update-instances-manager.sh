#!/bin/sh

set -e

rm -f modelix.version

./gradlew :instances-manager:clean :instances-manager:assemble
./docker-build-instances-manager.sh
(
  cd helm
  ./upgrade.sh
)
