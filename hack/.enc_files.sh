#!/usr/bin/env bash

encrypted_files=('charts/test-chart/values.secret.yaml')
encrypted_files+=('charts/oauth2-proxy/values.secret.yaml')
encrypted_files+=('charts/argocd/values.secret.yaml')
encrypted_files+=('charts/code-server/values.secret.yaml')
encrypted_files+=('charts/external-dns/values.secret.yaml')
encrypted_files+=('kustomize/overlays/oauth2-proxy/code-server/oauth-credentials.secret.yaml')
encrypted_files+=('kustomize/overlays/oauth2-proxy/general/oauth-credentials.secret.yaml')
encrypted_files+=('kustomize/overlays/oauth2-proxy/prometheus/oauth-credentials.secret.yaml')
encrypted_files+=('kustomize/overlays/kube-prometheus-stack/grafana.secret.yaml')
encrypted_files+=('kustomize/overlays/kube-prometheus-stack/additional-scrape-configs.secret.yaml')
encrypted_files+=('kustomize/overlays/kube-prometheus-stack/oauth-credentials.secret.yaml')
