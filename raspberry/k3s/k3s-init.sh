#!/bin/bash

# k3s 설치
# 공식 주소 (혹시나 최신 버전이 나왔는지 확인하기 위해)
# https://k3s.io/

curl -sfL https://get.k3s.io | sh -
# 설치 확인
sudo kubectl get nodes
