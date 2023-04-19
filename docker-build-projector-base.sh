#!/bin/sh

set -e

MPS_VERSION=$( ./mps-version.sh )

# read variables from mps-version.properties
while IFS='=' read -r key value
do
  echo "$key=$value"
  eval "${key}"=\${value}
done < "mps-version.properties"
echo "MPS Version: $mpsVersion"
echo "MPS Major Version: $mpsMajorVersion"
echo "MPS Minor Version: $mpsMinorVersion"

# patch branding.jar to not show EULA and data sharing agreement at startup
rm -rf build/branding
rm -f build/branding.zip
unzip -d build/branding artifacts/mps/lib/branding.jar
(
  cd build/branding
  sed -i.bak -E "s/JetBrains s.r.o./Modelix/" idea/IdeaApplicationInfo.xml
  rm idea/IdeaApplicationInfo.xml.bak
  zip -r ../branding.zip ./*
)

if [ "${CI}" = "true" ]; then
  docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg MPS_VERSION=${mpsVersion} -f Dockerfile-projector-base \
  -t "modelix/modelix-projector-base:${MPS_VERSION}" .
else
  docker build --build-arg MPS_VERSION=${mpsVersion} -f Dockerfile-projector-base \
  -t "modelix/modelix-projector-base:${MPS_VERSION}" .
fi
