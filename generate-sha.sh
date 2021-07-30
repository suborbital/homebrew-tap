#! /bin/bash

VERSION="${1}"
URL="https://github.com/suborbital/subo/archive/v${VERSION}.tar.gz"
SHA256=$(curl -sSL "${URL}" | shasum -a 256 | cut -f 1 -d ' ')

echo $SHA256