#!/bin/sh

mkdir -p ./kubernetes/secrets/

cat /dev/urandom | env LC_CTYPE=C tr -dc 'a-zA-Z0-9' | head -c 32 > ./kubernetes/secrets/modelsecret.txt

