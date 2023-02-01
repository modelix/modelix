#!/bin/sh

set -e

MODELIX_TARGET_PLATFORM="${MODELIX_TARGET_PLATFORM:=linux/amd64}"

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
    git clone https://github.com/JetBrains/projector-server.git
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
    git clone https://github.com/JetBrains/projector-client.git
  fi
  (
    cd projector-client

    # If the internet connection is restricted trying to downloading pako.min.js causes the browser to do nothing
    # until the connection times out. This appears like the link for opening a node in projector is broken.
    cd projector-client-web/src/main/resources
    wget https://cdn.jsdelivr.net/pako/1.0.3/pako.min.js
    sed -i.bak -E "s/https:\/\/cdn.jsdelivr.net\/pako\/1.0.3\/pako.min.js/pako.min.js/" index.html
  )

  if [ -d ./projector-docker ]; then
    (
      cd projector-docker
      git reset --hard
      git clean -xdf
      git pull
    )
  else
    git clone https://github.com/JetBrains/projector-docker.git
  fi

  cd projector-docker
  ./build-container-dev.sh "projector-mps" "https://download.jetbrains.com/mps/${mpsMajorVersion}/MPS-${mpsVersion}.tar.gz"
)


docker tag projector-mps:latest "modelix/projector-mps:${mpsMajorVersion}"
docker push "modelix/projector-mps:${mpsMajorVersion}"
docker tag projector-mps:latest "modelix/projector-mps:${mpsVersion}"
docker push "modelix/projector-mps:${mpsVersion}"
docker tag projector-mps:latest "modelix/projector-mps:${mpsVersion}-$TIMESTAMP"
docker push "modelix/projector-mps:${mpsVersion}-$TIMESTAMP"
#docker tag projector-mps:latest "modelix/projector-mps:${modelixVersion}"
#docker push "modelix/projector-mps:${modelixVersion}"
