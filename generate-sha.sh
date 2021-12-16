#! /bin/bash

VERSION="${1}"
if [ -z $VERSION ]; then
    >&2 echo "must provide a version! e.g.: ./generate-sha.sh <SEMVER>"
    exit 1
fi

URL="https://github.com/suborbital/subo/archive/v${VERSION}.tar.gz"
HTTP_STATUS=$(curl -s -o /dev/null -L -w "%{http_code}" ${URL})

if [ $HTTP_STATUS -ne "200" ]; then
    >&2 echo "curl returned $HTTP_STATUS, expected 200"
    exit 1
fi

SHA256=$(curl -sSL "${URL}" | shasum -a 256 | cut -f 1 -d ' ')
echo $SHA256

exit 0
