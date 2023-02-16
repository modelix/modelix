#!/bin/sh
set -e

while IFS='=' read -r key value
do
  eval "${key}"=\${value}
done < "mps-version.properties"
echo "$mpsVersion"
