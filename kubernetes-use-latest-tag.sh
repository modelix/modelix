#!/bin/sh

TAG=$(git describe --tags --abbrev=0)
echo "Using tag ${TAG}"

sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes_deprecated/local/db-deployment.yaml
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes_deprecated/common/model-deployment.yaml
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes_deprecated/common/proxy-deployment.yaml
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes_deprecated/common/ui-deployment.yaml
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes_deprecated/common/projector-deployment.yaml
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes_deprecated/common/uiproxy-deployment.yaml
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes_deprecated/common/instances-manager-deployment.yaml
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes_deprecated/common/workspace-manager-deployment.yaml
sed -i.bak -E "s/(image:.*:).*/\1${TAG}/" kubernetes_deprecated/common/workspace-client-deployment.yaml

rm kubernetes_deprecated/local/db-deployment.yaml.bak
rm kubernetes_deprecated/common/model-deployment.yaml.bak
rm kubernetes_deprecated/common/proxy-deployment.yaml.bak
rm kubernetes_deprecated/common/ui-deployment.yaml.bak
rm kubernetes_deprecated/common/projector-deployment.yaml.bak
rm kubernetes_deprecated/common/uiproxy-deployment.yaml.bak
rm kubernetes_deprecated/common/instances-manager-deployment.yaml.bak
rm kubernetes_deprecated/common/workspace-manager-deployment.yaml.bak
rm kubernetes_deprecated/common/workspace-client-deployment.yaml.bak
