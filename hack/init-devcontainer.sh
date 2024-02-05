#!/usr/bin/env bash

# Setup kubeconfig
mkdir -p ~/.kube/
echo "${DEV_KUBECONFIG}" > ~/.kube/config
[[ -d "$HOME/.kube" && -f "$HOME/.kube/config" ]] && export KUBECONFIG=$HOME/.kube/config

# Setup SOPS AGE Keys
mkdir -p ~/.age/sops/
echo "${SOPS_AGE_KEYS}" > ~/.age/sops/keys.txt
[[ -d "$HOME/.age/sops" && -f "$HOME/.age/sops/keys.txt" ]] && export SOPS_AGE_KEY_FILE="$HOME/.age/sops/keys.txt"