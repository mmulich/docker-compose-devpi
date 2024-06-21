#!/usr/bin/env bash

echo "Writing hostnames to /etc/hosts"

sudo tee -a /etc/hosts > /dev/null <<EOF
#--Start devpi local configuration--
127.0.0.1 pypi.local
#--End devpi local configuration--
EOF
