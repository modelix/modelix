#!/bin/sh

TAG=$(git describe --tags --abbrev=0)
echo "Using tag ${TAG}"

sed -i -E "s/\(image:.*:\).*/\1${TAG}/" kubernetes/local/db-deployment.yaml
sed -i -E "s/\(image:.*:\).*/\1${TAG}/" kubernetes/common/model-deployment.yaml
sed -i -E "s/\(image:.*:\).*/\1${TAG}/" kubernetes/common/proxy-deployment.yaml
sed -i -E "s/\(image:.*:\).*/\1${TAG}/" kubernetes/common/ui-deployment.yaml
sed -i -E "s/\(image:.*:\).*/\1${TAG}/" kubernetes/common/uiproxy-deployment.yaml

rm kubernetes/local/db-deployment.yaml-E
rm kubernetes/common/model-deployment.yaml-E
rm kubernetes/common/proxy-deployment.yaml-E
rm kubernetes/common/ui-deployment.yaml-E
rm kubernetes/common/uiproxy-deployment.yaml-E
