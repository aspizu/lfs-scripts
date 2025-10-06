#!/usr/bin/env bash
set -ex

lfs-bootstrap() {
    bash lfs-bootstrap.sh "lfs-bootstrap/$1"
}

lfs-bootstrap 4.2-filesystem
lfs-bootstrap 5.2-binutils
lfs-bootstrap 5.3-gcc
lfs-bootstrap 5.4-linux
lfs-bootstrap 5.5-glibc
lfs-bootstrap 5.6-libstdcpp
lfs-bootstrap 6.2-m4
lfs-bootstrap 6.3-ncurses
lfs-bootstrap 6.4-bash
lfs-bootstrap 6.5-coreutils
lfs-bootstrap 6.6-diffutils
lfs-bootstrap 6.7-file
lfs-bootstrap 6.8-findutils
lfs-bootstrap 6.9-gawk
lfs-bootstrap 6.10-grep
lfs-bootstrap 6.11-gzip
lfs-bootstrap 6.12-make
lfs-bootstrap 6.13-patch
lfs-bootstrap 6.14-sed
lfs-bootstrap 6.15-tar
lfs-bootstrap 6.16-xz
lfs-bootstrap 6.17-binutils-pass2
lfs-bootstrap 6.18-gcc-pass2
