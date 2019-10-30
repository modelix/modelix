#!/bin/sh

java -agentpath:/opt/cprof/profiler_java_agent.so=-cprof_service=ui \
     -DMODEL_URI=$MODEL_URI \
     -classpath "./ui-server.jar:./mps/lib/*" \
     de.q60.mps.web.ui.server.Main
