#!/bin/sh

set -e

cd "$(dirname "$0")"

while IFS='=' read -r key value
do
  if [[ "modelixCoreVersion" == "${key}" ]]; then
    eval "${key}"=\${value}
  fi
done < "../gradle.properties"

TAG=$( ../modelix-version.sh )


sed -i.bak -E "s/^appVersion:.*/appVersion: \"${TAG}\"/" modelix/Chart.yaml
sed -i.bak -E "s/^version:.*/version: \"${TAG}\"/" modelix/Chart.yaml
rm modelix/Chart.yaml.bak

sed -i.bak -E "s/  model: \".*\"/  model: \"${modelixCoreVersion}\"/" modelix/values.yaml
rm modelix/values.yaml.bak

