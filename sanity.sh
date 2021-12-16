#! /bin/bash

VERSION="$(cat .subo-version)"

err_sum=0

function check() {
    file="Formula/subo.rb"
    match=$(grep -E "$1" $file)

    if [ $? -ne 0 ]; then
        >&2 echo "match not found for $1"
        err_sum=$(($err_sum + 1))
    fi
}


sha=$(./generate-sha.sh $VERSION)
if [ $? -ne 0 ]; then
    err_sum=$(($err_sum + 1))
fi

check "version \"${VERSION}\""
check "url \"https://github.com/suborbital/subo/archive/v$VERSION.tar.gz\""
check "sha256 \"$sha\""

if [ $err_sum -eq 0 ]; then
    echo "success"
else
    echo "failed with $err_sum errors"
fi

exit $err_sum