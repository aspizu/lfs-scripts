#!/usr/bin/env bash
set -ex

lfs-install() {
    bash lfs-install.sh "lfs-install/$1"
}

lfs-install 8.5-glibc
lfs-install 8.4-iana-etc
lfs-install 8.6-zlib
lfs-install 8.7-bzip2
lfs-install 8.8-xz
lfs-install 8.9-lz4
lfs-install 8.10-zstd
lfs-install 8.11-file
lfs-install 8.12-readline
lfs-install 8.13-m4
lfs-install 8.14-bc
lfs-install 8.15-flex
lfs-install 8.19-pkgconf
lfs-install 8.20-binutils
lfs-install 8.21-gmp
lfs-install 8.22-mpfr
lfs-install 8.23-mpc
lfs-install 8.24-attr
lfs-install 8.25-acl
lfs-install 8.26-libcap
lfs-install 8.27-libxcrypt
lfs-install 8.28-shadow
lfs-install 8.29-gcc
lfs-install 8.30-ncurses
lfs-install 8.31-sed
lfs-install 8.32-psmisc
lfs-install 8.33-gettext
lfs-install 8.34-bison
lfs-install 8.35-grep
lfs-install 8.36-bash
echo "Restart chroot and continue with auto-install-3.sh"
