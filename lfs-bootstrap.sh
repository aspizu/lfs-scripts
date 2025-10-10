#!/usr/bin/env bash
set -ex
source config.sh
set +h
umask 022
LFS=/mnt/lfs
LC_ALL=POSIX
LFS_TGT=$(uname -m)-lfs-linux-gnu
PATH=/usr/bin
if [ ! -L /bin ]; then PATH=/bin:$PATH; fi
PATH=$LFS/tools/bin:$PATH
CONFIG_SITE=$LFS/usr/share/config.site
export LFS LC_ALL LFS_TGT PATH CONFIG_SITE
MAKEFLAGS=-j$(nproc)
export MAKEFLAGS

mkbuilddir() {
    mkdir -p build
    cd build
}

pkgopen() {
    cd $LFS/sources
    tar -xf "$1".tar.*
    echo "$1" > .pkgname
    cd "$1"
}

pkgclose() {
    cd $LFS/sources
    rm -r "$(< .pkgname)"
}

source "$1.sh"
