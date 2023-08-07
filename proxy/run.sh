#!/bin/bash
if [ "$NAMESERVER" == "" ]; then
	export NAMESERVER=`cat /etc/resolv.conf | grep "nameserver" | awk '{print $2}' | tr '\n' ' '`
fi

echo "Nameserver is: $NAMESERVER"

echo "Copying nginx config"
envsubst '$NAMESERVER,$KUBERNETES_NAMESPACE,$KUBERNETES_INSTANCE_PREFIX,$MODELIX_MAX_BODY_SIZE' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

echo "Using nginx config:"
cat /etc/nginx/nginx.conf

echo "Starting nginx"
nginx -c /etc/nginx/nginx.conf -g "daemon off;"