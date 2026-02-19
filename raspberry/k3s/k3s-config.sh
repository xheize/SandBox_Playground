#!/bin/bash

echo "Creating K3s configuration file with Traefik disabled..."

tee <<EOF
---
# /etc/rancher/k3s/config.yaml
tls-san:
  - "your-ip"
EOF > /etc/rancher/k3s/config.yaml