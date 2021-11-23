#!/bin/sh

kubectl apply \
  -f kubernetes/common/projector-service.yaml \
  -f kubernetes/common/projector-deployment.yaml