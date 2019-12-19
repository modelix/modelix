#!/bin/sh

kubectl create secret generic modelsecret --from-file=./kubernetes/secrets/modelsecret.txt