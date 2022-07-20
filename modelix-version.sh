#!/bin/sh

set -e
cd "$(dirname "$0")"

while IFS='=' read -r key value
do
    eval "${key}"=\${value}
done < "./mps-version.properties"

if [ -z "$TRAVIS_TAG" ]; then
    FILE=./modelix.version
    if [ -f "$FILE" ]; then
        MODELIX_VERSION="`cat $FILE`"
    else
        MODELIX_VERSION="$mpsVersion-$(date +"%Y%m%d%H%M")-SNAPSHOT"
        echo "$MODELIX_VERSION" > $FILE
    fi
else
    MODELIX_VERSION="$TRAVIS_TAG"
fi

echo "$MODELIX_VERSION"
