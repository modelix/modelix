#!/bin/sh

set -e

rm -f modelix.version

./gradlew :workspace-job:clean :workspace-job:assemble
./docker-build-workspace-job.sh
(
  cd helm
  ./upgrade.sh
)
