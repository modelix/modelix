#!/bin/sh

kubectl create secret generic cloudsql-instance-credentials --from-file=./kubernetes/secrets/cloudsql.json