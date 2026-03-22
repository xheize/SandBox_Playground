#!/bin/bash

# k3s 설치
# 공식 주소 (혹시나 최신 버전이 나왔는지 확인하기 위해)
# https://k3s.io/

curl -sfL https://get.k3s.io | sh -
# 설치 확인
sudo kubectl get nodes



# 워커 노드 추가
curl -sfL https://get.k3s.io | K3S_URL=https://<MASTER_NODE_IP>:6443 K3S_TOKEN=<NODE_TOKEN> K3S_NODE_NAME=<NODE_NAME> sh -
# 설치 확인
sudo kubectl get nodes