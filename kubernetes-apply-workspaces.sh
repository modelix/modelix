#!/bin/sh

kubectl apply \
  -f kubernetes/common/uiproxy-serviceaccount.yaml \
  -f kubernetes/common/uiproxy-rolebinding.yaml \
  -f kubernetes/common/instances-manager-deployment.yaml \
  -f kubernetes/common/instances-manager-service.yaml \
  -f kubernetes/common/workspace-client-deployment.yaml \
  -f kubernetes/common/workspace-client-service.yaml \
  -f kubernetes/common/workspace-uploads-persistentvolumeclaim.yaml \
  -f kubernetes/common/workspace-manager-deployment.yaml \
  -f kubernetes/common/workspace-manager-service.yaml
