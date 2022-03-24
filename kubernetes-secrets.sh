#!/bin/sh

mkdir -p ./kubernetes/secrets/

if [ ! -f ./kubernetes/secrets/modelsecret.txt ]; then
  cat /dev/urandom | env LC_CTYPE=C tr -dc 'a-zA-Z0-9' | head -c 32 > ./kubernetes/secrets/modelsecret.txt
fi
kubectl create secret generic modelsecret --from-file=./kubernetes/secrets/modelsecret.txt

if [ ! -f ./kubernetes/secrets/workspace-credentials-key.txt ]; then
    cat /dev/urandom | env LC_CTYPE=C tr -dc 'a-zA-Z0-9' | head -c 100 > ./kubernetes/secrets/workspace-credentials-key.txt
fi
kubectl create secret generic workspacesecret --from-file=./kubernetes/secrets/workspace-credentials-key.txt