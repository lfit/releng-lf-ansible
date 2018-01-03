#!/bin/bash

set -eu -o pipefail

for role in roles/*; do
    pushd "$role"
    molecule test --destroy=always
    popd
done
