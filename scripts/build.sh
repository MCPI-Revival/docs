#!/bin/sh

set -e

# Build Site
mkdocs build --strict

# Extra Files
if [ -z "${CI}" ]; then
    exit 0
fi
cd site

# RakNet
cd multiplayer
tmp="$(pwd)/tmp"
rm -rf "${tmp}"
mkdir "${tmp}"
name='raknet'
zip="${tmp}/${name}.zip"
url='https://web.archive.org/web/20240730202156/http://raknet.net/raknet/downloads/RakNet_PC-4.036.zip'
wget --quiet -O "${zip}" "${url}"
unzip -q -d "${tmp}" "${zip}"
dir="$(pwd)/${name}"
rm -rf "${dir}"
mv "${tmp}/Help" "${dir}"
rm -rf "${tmp}"
cd ../

# Reborn SDK
cd reborn/master
name='symbols-doxygen'
zip="${HOME}/.minecraft-pi/sdk/lib/minecraft-pi-reborn/sdk/${name}.tar.xz"
rm -rf "${name}"
mkdir "${name}"
tar -xf "${zip}" -C "${name}"
