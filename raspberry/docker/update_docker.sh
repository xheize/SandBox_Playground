#!/bin/bash

apt-mark showhold

sudo apt-get update
sudo apt-get -y upgrade docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin