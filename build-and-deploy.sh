#!/bin/sh

set -e

rm -f modelix.version

./gradlew :clean :assemble
./docker-build-all.sh
./kubernetes-secrets.sh
./kubernetes-apply-modelserver.sh
./kubernetes-apply-workspaces.sh

# If pod/db-... remains is status Pending ensure that at least one volume exists in docker desktop