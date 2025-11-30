#!/bin/sh

set -e

# Build Site
mkdocs build --strict

# RakNet
if [ -z "${CI}" ]; then
    exit 0
fi
cd site/multiplayer
tmp="$(pwd)/tmp"
rm -rf "${tmp}"
mkdir "${tmp}"
name='raknet'
zip="${tmp}/${name}.zip"
url='http://www.jenkinssoftware.com/raknet/downloads/RakNet_PC-4.036.zip'
wget --quiet -O "${zip}" "${url}"
unzip -q -d "${tmp}" "${zip}"
dir="$(pwd)/${name}"
rm -rf "${dir}"
mv "${tmp}/Help" "${dir}"
rm -rf "${tmp}"
