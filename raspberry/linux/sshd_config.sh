#!/bin/bash

echo "Creating K3s configuration file with Traefik disabled..."
tee <<EOF

password: your-password

EOF > /etc/ssh/sshd_config