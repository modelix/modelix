#!/bin/sh

set -e
/projector/ide/jbr/bin/java -jar /home/projector-user/workspace-client.jar
/install-plugins.sh /projector/ide/plugins/ /home/projector-user/workspace.zip/ 0
/run.sh
