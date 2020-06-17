#!/bin/sh

if [ ! -f ./kubernetes/secrets/modelsecret.txt ]; then
    ./generate-modelsecret.sh
fi

kubectl create secret generic modelsecret --from-file=./kubernetes/secrets/modelsecret.txt