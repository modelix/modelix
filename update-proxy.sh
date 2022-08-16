#!/bin/sh

set -e

rm -f modelix.version

./docker-build-proxy.sh
(
  cd helm
  ./upgrade.sh
)
