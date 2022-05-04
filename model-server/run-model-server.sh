#!/bin/sh

java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5071 -XX:MaxRAMPercentage=75 -Djdbc.url=$jdbc_url -cp "model-server/build/libs/*" org.modelix.model.server.Main
