#!/bin/sh

java -Dfile.encoding=UTF-8 -classpath "./ui-server/target/webmps-ui-server-1.0-SNAPSHOT.jar:./build/de.q60.mps.web.rcp/build/artifacts/de.q60.mps.webBranding/lib/*" de.q60.mps.web.ui.server.Main
