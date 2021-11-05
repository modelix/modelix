#!/bin/sh

set -e

TAG=$( ./modelix-version.sh )

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

docker build --no-cache -f Dockerfile-projector -t modelix/modelix-projector .

docker tag modelix/modelix-projector:latest "modelix/modelix-projector:${TAG}"

sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes/common/projector-deployment.yaml
rm kubernetes/common/projector-deployment.yaml.bak