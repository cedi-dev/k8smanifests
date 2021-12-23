#!/usr/bin/env bash

encrypted_files=('charts/test-chart/values.secret.yaml')
encrypted_files+=('charts/oauth2-proxy/values.secret.yaml')
encrypted_files+=('charts/argocd/values.secret.yaml')
encrypted_files+=('charts/code-server/values.secret.yaml')
encrypted_files+=('kustomize/overlays/kube-prometheus-stack/grafana.secret.yaml')
encrypted_files+=('kustomize/overlays/kube-prometheus-stack/oauth-credentials.secret.yaml')