#!/usr/bin/env bash

export SOPS_AGE_KEY_FILE="$HOME/.age/sops/keys.txt"

dir=$(pwd)
if [[ $dir =~ "(.*)(hack)$" ]]; then
    cd ..
fi

source ./hack/.enc_files.sh


age_keys=('age1r9chn8pl3d4msxktw457x3xz2l8p04pwuyd7pkgldkmkakras5ks7tfsyq') # cedi
age_keys+=('age1y0a34ky5xmhda096mds5r2nk9gek2vy0jk7xepzjps9c3yauzy5sup3jde') # k8s_cedi_dev.txt


function join_by { 
    local d=${1-} f=${2-}
    if shift 2; then
        printf %s "$f" "${@/#/$d}";
    fi;
}


for enc_file in "${encrypted_files[@]}"; do
    echo "* encrypting $enc_file"
    sops --age $(join_by , "${age_keys[@]}") -e -i $enc_file
done
