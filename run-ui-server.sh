#!/bin/sh

java -DMODEL_URI=$MODEL_URI -classpath "./ui-server.jar:./mps/lib/*" de.q60.mps.web.ui.server.Main
