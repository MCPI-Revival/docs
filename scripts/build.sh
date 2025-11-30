#!/bin/sh
set -e

# Build Site
mkdocs build --strict

# RakNet
cd site
tmp="$(pwd)/tmp"
rm -rf "${tmp}"
mkdir "${tmp}"
name='RakNet'
zip="${tmp}/${name}.zip"
url='http://www.jenkinssoftware.com/raknet/downloads/RakNet_PC-4.036.zip'
wget -O "${zip}" "${url}"
unzip -d "${tmp}" "${zip}"
dir="$(pwd)/${name}"
rm -rf "${dir}"
mv "${tmp}/Help" "${dir}"
rm -rf "${tmp}"
