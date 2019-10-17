#!/bin/sh

docker tag webmps-db eu.gcr.io/webmps/webmps-db
docker tag webmps-model eu.gcr.io/webmps/webmps-model
docker tag webmps-ui eu.gcr.io/webmps/webmps-ui

docker push eu.gcr.io/webmps/webmps-db
docker push eu.gcr.io/webmps/webmps-model
docker push eu.gcr.io/webmps/webmps-ui
