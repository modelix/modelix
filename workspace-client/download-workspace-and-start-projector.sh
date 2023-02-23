#!/bin/sh

set -e
/projector/ide/jbr/bin/java -jar /home/projector-user/workspace-client.jar
/install-plugins.sh /projector/ide/plugins/ /home/projector-user/workspace.zip/ 0

rm -f /home/projector-user/default-mps-project/.mps/modules.xml
sed -i.bak -E "s/\\\$MODELIX_WORKSPACE\\\$/\/home\/projector-user\/workspace.zip/" /home/projector-user/workspace.zip/modules.xml
mv /home/projector-user/workspace.zip/modules.xml /home/projector-user/default-mps-project/.mps/modules.xml

if [ -f "/home/projector-user/workspace.zip/disabled_plugins.txt" ]; then
  for configDir in /home/projector-user/.config/JetBrains/*/; do
   rm -f "$configDir/disabled_plugins.txt"
   cp "/home/projector-user/workspace.zip/disabled_plugins.txt" "$configDir/disabled_plugins.txt"
  done
fi

/run.sh
