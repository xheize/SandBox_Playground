#!/bin/bash

echo "Creating HelmChartConfig for Traefik with Cloudflare DNS Challenge..."

echo "chk cloudflare secret"
sudo kubectl get secret cloudflare-api-token -n kube-system || {
  echo "Creating Cloudflare API token secret..."
  sudo kubectl create secret generic cloudflare-api-token \
    --from-literal=API_TOKEN='your-cloudflare-api-token' \
    -n kube-system
}

tee <<EOF
---
apiVersion: helm.cattle.io/v1
kind: HelmChartConfig
metadata:
  name: traefik
  namespace: kube-system
spec:
  valuesContent: |-
    accessLogs:
      enabled: true
    env:
      - name: CF_DNS_API_TOKEN
        valueFrom:
          secretKeyRef:
            name: cloudflare-api-token
            key: API_TOKEN
    additionalArguments:
      - "--log.level=DEBUG"
      - "--api.insecure=true"
      - "--entrypoints.web.address=:80"
      - "--entrypoints.websecure.address=:443"
      # 1. Let's Encrypt (Resolver) 설정
      - "--certificatesresolvers.myresolver.acme.email=yejun1101@gmail.com"
      - "--certificatesresolvers.myresolver.acme.storage=/data/acme.json"
      - "--certificatesresolvers.myresolver.acme.dnschallenge=true"
      - "--certificatesresolvers.myresolver.acme.dnschallenge.provider=cloudflare"
      # 2. 와일드카드 인증서 (*.내도메인.com) 메인으로 지정
      # 이걸 해두면 라벨에 일일이 안 적어도 알아서 HTTPS가 적용됩니다.
      - "--entrypoints.websecure.http.tls.certresolver=mainresolver"
      - "--entrypoints.websecure.http.tls.domains[0].main=xheize.cc"
      - "--entrypoints.websecure.http.tls.domains[0].sans=*.xheize.cc"
    persistentVolume:
      enabled: true
      path: /data
      size: 1Gi
EOF > /var/lib/rancher/k3s/server/manifests/traefik-config.yaml