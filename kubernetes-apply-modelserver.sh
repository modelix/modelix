#!/bin/sh

kubectl apply \
  -f kubernetes/local/db-data-persistentvolumeclaim.yaml \
  -f kubernetes/local/db-deployment.yaml \
  -f kubernetes/common/db-service.yaml \
  -f kubernetes/common/model-deployment.yaml \
  -f kubernetes/common/model-service.yaml \
  -f kubernetes/common/proxy-deployment.yaml \
  -f kubernetes/common/proxy-service.yaml \
  -f kubernetes/common/proxy-service.yaml