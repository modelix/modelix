#!/bin/sh

java -DMODEL_URI=$MODEL_URI \
     -DTREE_ID=$TREE_ID \
     -Dmodelix.executionMode=CLUSTER \
     -classpath "./*:./mps/lib/*:./dependencies/*" \
     -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5071 \
     -XX:MaxRAMPercentage=85\
     org.modelix.ui.server.Main

# -agentpath:/opt/cprof/profiler_java_agent.so=-cprof_service=ui