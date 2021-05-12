#!/bin/sh

java -XX:MaxRAMPercentage=100 -Djdbc.url=$jdbc_url -cp "model-server/build/libs/*" org.modelix.model.server.Main
