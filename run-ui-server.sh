#!/bin/sh

java -DMODEL_URI=$MODEL_URI -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -classpath "./ui-server/build/libs/ui-server-1.0-SNAPSHOT.jar:./build/de.q60.mps.web.rcp/build/artifacts/de.q60.mps.webBranding/lib/*" de.q60.mps.web.ui.server.Main
