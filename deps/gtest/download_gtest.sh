#!/bin/bash

VERSION=$1
if [[ $VERSION = "" ]]; then
    echo "[!] Missing version as argument"
    exit 0
fi

GTEST_VERSION=googletest-release-${VERSION}.zip
GTEST_LINK=https://codeload.github.com/google/googletest/zip/release-${VERSION}

if [[ ! -f ${GTEST_VERSION} ]]; then
    wget --no-check-certificate -O ${GTEST_VERSION} ${GTEST_LINK}
fi
