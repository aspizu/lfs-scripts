#!/usr/bin/env bash
set -ex

lfs-install() {
    bash lfs-install.sh "lfs-install/$1.sh"
}

lfs-install 7.6-config
lfs-install 7.7-gettext
lfs-install 7.8-bison
lfs-install 7.9-perl
lfs-install 7.10-python
lfs-install 7.11-texinfo
lfs-install 7.12-util-linux
lfs-install 7.13-cleanup
echo "Optionally create a backup, then continue with auto-install-2.sh"
