#!/bin/sh

mkdir cert
openssl req -new -newkey rsa:4096 -x509 -sha256 -days 3650 -nodes -out cert/cert.crt -keyout cert/key.key
