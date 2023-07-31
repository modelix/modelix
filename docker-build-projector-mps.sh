#!/bin/sh

set -e

# read variables from mps-version.properties
while IFS='=' read -r key value
do
  echo "$key=$value"
  eval "${key}"=\${value}
done < "mps-version.properties"
echo "MPS Version: $mpsVersion"
echo "MPS Major Version: $mpsMajorVersion"
echo "MPS Minor Version: $mpsMinorVersion"

modelixVersion=$( ./modelix-version.sh )
echo "Modelix Version: $modelixVersion"

TIMESTAMP="$(date +"%Y%m%d%H%M")"

(
  cd ../
  if [ -d ./projector-server ]; then
    (
      cd projector-server
      git reset --hard
      git clean -xdf
      git pull
    )
  else
    git clone https://github.com/modelix/projector-server.git
  fi
  (
    cd projector-server
    echo "useLocalProjectorClient=true" > local.properties
  )

  if [ -d ./projector-client ]; then
    (
      cd projector-client
      git reset --hard
      git clean -xdf
      git pull
    )
  else
    git clone https://github.com/modelix/projector-client.git
  fi

  if [ -d ./projector-docker ]; then
    (
      cd projector-docker
      git reset --hard
      git clean -xdf
      git pull
    )
  else
    git clone https://github.com/modelix/projector-docker.git
  fi

  cd projector-docker
  (
    cd ../projector-server
    ./gradlew :projector-server:distZip
  )

  downloadUrl="https://download.jetbrains.com/mps/${mpsMajorVersion}/MPS-${mpsVersion}.tar.gz"

#  if [ "${CI}" = "true" ]; then
    docker buildx build --platform linux/amd64,linux/arm64 --push \
    -t "modelix/projector-mps:${mpsMajorVersion}" \
    -t "modelix/projector-mps:${mpsVersion}" \
    --build-arg buildGradle=false --build-arg "downloadUrl=${downloadUrl}" -f Dockerfile ..
#  else
#    docker buildx build \
#    -t "modelix/projector-mps:${mpsMajorVersion}" \
#    -t "modelix/projector-mps:${mpsVersion}" \
#    --build-arg buildGradle=false --build-arg "downloadUrl=${downloadUrl}" -f Dockerfile ..
#  fi
)

