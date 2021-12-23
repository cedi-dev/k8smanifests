#!/usr/bin/env bash

export SOPS_AGE_KEY_FILE="$HOME/.age/sops/keys.txt"

dir=$(pwd)
if [[ $dir =~ "(.*)(hack)$" ]]; then
  cd ..
fi

source ./hack/.enc_files.sh

for enc_file in "${encrypted_files[@]}"; do
  echo "* decrypting $enc_file"
  sops -d -i $enc_file
done