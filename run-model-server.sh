#!/bin/sh

java -Djdbc.url=$jdbc_url -cp model-server/build/libs/* de.q60.webmps.server.Main
