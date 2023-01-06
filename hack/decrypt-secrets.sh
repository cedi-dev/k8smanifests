#!/usr/bin/env bash

export SOPS_AGE_KEY_FILE="$HOME/.age/sops/keys_mae.txt"

dir=$(pwd)
if [[ $dir =~ "(.*)(hack)$" ]]; then
  cd ..
fi

find . -name "*.secret.yaml" | xargs -n1 sops -d -i
