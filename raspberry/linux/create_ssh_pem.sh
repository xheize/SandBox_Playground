#!/bin/bash

echo "create ssh key pair for ssh"

userHomeDir=$HOME
pwd=$(pwd)

ssh-keygen -t ed25519 -f /home/pi/.ssh/id_ed25519 -N ""