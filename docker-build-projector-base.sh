#!/bin/sh

set -e

MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"
MPS_TAG=$( ./mps-version.sh )

# read variables from mps-version.properties
while IFS='=' read -r key value
do
  echo "$key=$value"
  eval "${key}"=\${value}
done < "mps-version.properties"
echo "MPS Version: $mpsVersion"
echo "MPS Major Version: $mpsMajorVersion"
echo "MPS Minor Version: $mpsMinorVersion"

#Disabled for testing
#sed -i.bak -E "s/FROM modelix\/projector-mps:.+/FROM modelix\/projector-mps:${mpsVersion}/" Dockerfile-projector-base
rm Dockerfile-projector-base.bak

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
  docker buildx build --platform linux/amd64,linux/arm64 --push --no-cache -f Dockerfile-projector-base \
  -t modelix/modelix-projector-base:latest -t "modelix/modelix-projector-base:${MPS_TAG}" .
else
  docker build --platform "${MODELIX_TARGET_PLATFORM}" --no-cache -f Dockerfile-projector-base \
  -t modelix/modelix-projector-base:latest -t "modelix/modelix-projector-base:${MPS_TAG}" .
fi
