#!/bin/bash

curl https://raw.githubusercontent.com/cockroachdb/cockroach-operator/master/install/crds.yaml --output crd.yaml
curl https://raw.githubusercontent.com/cockroachdb/cockroach-operator/master/install/operator.yaml --output operator.yaml

curl https://raw.githubusercontent.com/cockroachdb/cockroach-operator/master/examples/client-secure-operator.yaml --output client-secure-operator.yaml