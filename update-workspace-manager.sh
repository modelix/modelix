#!/bin/sh

set -e

rm -f modelix.version

./gradlew :headless-runner:clean :workspace-manager:clean :workspace-manager:assemble
./docker-build-workspace-manager.sh
(
  cd helm
  ./upgrade.sh
)
