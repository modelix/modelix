#!/bin/sh

set -e

rm -f modelix.version

./gradlew :model-server:clean :model-server:assemble
./docker-build-model.sh
(
  cd helm
  ./upgrade.sh
)
