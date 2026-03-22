#!/bin/sh

set -e

# Values
URL='https://gitea.thebrokenrail.com/minecraft-pi-reborn/minecraft-pi-reborn'
DIR='docs/reborn'

# Clone And Copy Branch
clone() {
    # Clone
    BRANCH="$1"
    git clone --depth 1 "${URL}.git" -b "${BRANCH}" tmp

    # Copy Files
    OUT="${DIR}/${BRANCH}"
    rm -rf "${OUT}"
    cp -r tmp/docs "${OUT}"
    INTRO_NAME='INTRO.md'
    INTRO="${OUT}/${INTRO_NAME}"
    cp tmp/README.md "${INTRO}"
    START='start.png'
    find tmp/images -name "${START}" -exec \
        cp {} "${OUT}" \;
    rm -rf tmp

    # Fix External URLs
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

    # Rename Navigation Files
    find "${OUT}" -name README.md -execdir \
        mv {} SUMMARY.md \;

    # Patch Introduction
    sed -i 's|docs/||g' "${INTRO}"
    sed -i '/## Documentation/,$d' "${INTRO}"
    sed -i 's|height="\([0-9]\+\)"|style="height: \1px"|g' "${INTRO}"
    sed -i "s|\"images/.*${START}|\"../${START}|g" "${INTRO}"
    sed -i "s|<!-- Introduction Link Location -->|* [Introduction](${INTRO_NAME})|g" "${OUT}/SUMMARY.md"
}

# Latest
clone master
echo '* [Symbols Doxygen](https://mcpi-revival.github.io/docs/reborn/master/symbols-doxygen/)' >> "${DIR}/master/SUMMARY.md"
# 2.X
clone 2.x

# Download MCPI-Reborn SDK
version='3.0.1'
url="https://gitea.thebrokenrail.com/minecraft-pi-reborn/minecraft-pi-reborn/releases/download/${version}/minecraft-pi-reborn-${version}-amd64.AppImage"
appimage='game.AppImage'
wget --quiet -O "${appimage}" "${url}"
chmod +x "${appimage}"
"./${appimage}" --appimage-extract-and-run --copy-sdk
rm -f "${appimage}"
