#!/bin/sh

set -e

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

docker build --no-cache -f Dockerfile-projector-base -t modelix/modelix-projector-base .
