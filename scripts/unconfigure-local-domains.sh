#!/usr/bin/env bash

HERE=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Removing hostnames to /etc/hosts"

sudo python3 $HERE/_unconfigure-local-domains.py
