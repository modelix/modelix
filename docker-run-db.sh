#!/bin/sh

docker run --rm -it -p 54333:5432/tcp -e POSTGRES_USER="cloudmps" -e POSTGRES_PASSWORD="cloudmps" webmps-db