#!/bin/sh

set -e

cd "$(dirname "$0")"

TAG=$( ../modelix-version.sh )


sed -i.bak -E "s/appVersion:.*/appVersion: \"${TAG}\"/" modelix/Chart.yaml
sed -i.bak -E "s/version:.*/version: \"${TAG}\"/" modelix/Chart.yaml
rm modelix/Chart.yaml.bak

mkdir -p repo
cd repo
helm package ../modelix/
helm repo index ./

