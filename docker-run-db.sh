#!/bin/sh

docker run --rm -it -p 54333:5432/tcp -e POSTGRES_USER="modelix" -e POSTGRES_PASSWORD="modelix" modelix/modelix-db