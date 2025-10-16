#!/bin/sh

set -e

# Values
URL="https://gitea.thebrokenrail.com/minecraft-pi-reborn/minecraft-pi-reborn"
DIR=docs/reborn

# Clean Up
rm -rf "${DIR}"
mkdir "${DIR}"

# Clone And Copy Branch
clone() {
    # Clone
    BRANCH="$1"
    git clone --depth 1 "${URL}.git" -b "${BRANCH}" tmp
    OUT="${DIR}/$2"
    cp -r tmp/docs "${OUT}"
    rm -rf tmp

    # Remove Unneeded Files
    find "${OUT}" -name README.md -delete

    # Patch URLs
    fix() {
        impl() {
            find "${OUT}" -type f -exec \
                sed -i "s|($1$2|(${URL}/src/branch/${BRANCH}/$2|g" {} +
        }
        PARENT='\.\./'
        impl "${PARENT}${PARENT}" "$1"
        impl "${PARENT}" "$1"
    }
    fix example-mods
    fix mods
    fix libreborn
    fix symbols
}

# Latest
clone master 'Latest'
# 2.X
clone 2.x 'Legacy (2.X)'
