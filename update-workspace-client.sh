#!/bin/sh

set -e

rm -f modelix.version

./gradlew :workspace-client:clean :workspace-client:assemble
./docker-build-projector.sh
./docker-build-workspace-client.sh
(
  cd helm
  ./upgrade.sh
)
