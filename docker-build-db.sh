#!/bin/sh
cd db
docker build --no-cache -f Dockerfile -t modelix/modelix-db .