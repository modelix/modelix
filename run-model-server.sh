#!/bin/sh

java -Djdbc.url=$jdbc_url -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -cp "model-server/build/libs/*" de.q60.webmps.server.Main
