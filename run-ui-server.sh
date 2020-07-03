#!/bin/sh

java -DMODEL_URI=$MODEL_URI \
     -DGIT_REPO_URI=$GIT_REPO_URI \
     -DTREE_ID=$TREE_ID \
     -classpath "./*:./mps/lib/*:./dependencies/*" \
     -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5071 \
     org.modelix.ui.server.Main

# -agentpath:/opt/cprof/profiler_java_agent.so=-cprof_service=ui