# secret management with `age`

Secrets are encrypted using SOPS (ksops and helmSecrets) and keys are handeled using [age](https://age-encryption.org) in favor to PGP Keys which are a pain to handle.

To generate your personal age key-pair:

```bash
mkdir -p "$HOME/.age/sops/"
age-keygen -o "$HOME/.age/sops/keys.txt"
```

Then go and add your age public-key to the [.sops.yaml](.sops.yaml) config file to every block and add it to [encrypt-secrets.sh](./scripts/encrypt-secrets.sh).
The second step is necessary because of [sops#966](https://github.com/mozilla/sops/pull/966) not yet merged.

To quickly encrypt all files, just use

```bash
./scripts/decrypt-secrets.sh
```

and before comitting, use

```bash
./scripts/encrypt-secrets.sh
```

However: You shouldn't do this except you know exactly what you're doing. Better use

```bash
sops path/to/encrypted/secret.yaml
```

and edit the file using the editor configured in `$EDITOR`. This will make sure, the file is encrypted proberly and you don't accidentally commit an unencrypted secret.
