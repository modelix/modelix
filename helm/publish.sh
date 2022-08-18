#!/bin/sh

set -e
set -o xtrace

cd "$(dirname "$0")"

TAG=$( ../modelix-version.sh )


sed -i.bak -E "s/^appVersion:.*/appVersion: \"${TAG}\"/" modelix/Chart.yaml
sed -i.bak -E "s/^version:.*/version: \"${TAG}\"/" modelix/Chart.yaml
rm modelix/Chart.yaml.bak

mkdir -p repo
cd repo
helm package ../modelix/
helm repo index ./

curl -v --user "${ARTIFACTS_ITEMIS_CLOUD_USER}:${ARTIFACTS_ITEMIS_CLOUD_PW}" https://artifacts.itemis.cloud/repository/helm-modelix/ --upload-file modelix-${TAG}.tgz
