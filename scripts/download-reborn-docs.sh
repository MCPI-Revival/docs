#!/bin/sh

set -e

# Values
URL="https://gitea.thebrokenrail.com/minecraft-pi-reborn/minecraft-pi-reborn"
DIR='docs/Reborn'

# Clone And Copy Branch
clone() {
    # Clone
    BRANCH="$1"
    git clone --depth 1 "${URL}.git" -b "${BRANCH}" tmp

    # Copy Files
    OUT="${DIR}/$2"
    rm -rf "${OUT}"
    cp -r tmp/docs "${OUT}"
    INDEX="${OUT}/Introduction.md"
    cp tmp/README.md "${INDEX}"
    START='start.png'
    find tmp/images -name "${START}" -exec \
        cp {} "${OUT}" \;
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

    # Patch Introduction
    sed -i 's|docs/||g' "${INDEX}"
    sed -i '/## Documentation/,$d' "${INDEX}"
    sed -i 's|height="\([0-9]\+\)"|style="height: \1px"|g' "${INDEX}"
    sed -i "s|\"images/.*${START}|\"../${START}|g" "${INDEX}"
}

# Latest
clone master 'Latest'
# 2.X
clone 2.x 'Legacy (2.X)'
