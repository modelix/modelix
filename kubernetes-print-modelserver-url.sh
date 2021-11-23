#!/bin/sh

SERVICEPORT=$(kubectl get service/proxy | sed -n "s/.*80:\([0-9]*\)\/TCP.*/\1/p")
echo "http://localhost:${SERVICEPORT}/model/"
