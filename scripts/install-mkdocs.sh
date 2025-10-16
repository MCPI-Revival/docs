#!/bin/sh

set -e

# Install
pipx install mkdocs

# Add Extensions
inject() {
    pipx inject mkdocs "$1"
}
inject mkdocs-github-admonitions-plugin
inject mdx_truly_sane_lists
inject pymdown-extensions
inject mkdocs-awesome-nav