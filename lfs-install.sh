#!/usr/bin/env bash
set -ex

mkbuilddir() {
    mkdir -p build
    cd build
}

pkgfetch() {
    cd /sources
    if [[ ! -f $(basename "$1") ]]; then
        wget -c "$1" --no-check-certificate
    fi
}

# arguments:
# organization = $1
# repository = $2
# branch = $3
pkggithub() {
    cd /sources
    if [[ ! -f $2.tar.xz ]]; then
        wget -c --no-check-certificate --header="Accept:application/vnd.github.v3.raw" https://api.github.com/repos/${1}/${2}/tarball/${3} -O $2.tar.xz
        mkdir -p $2
        tar -xf $2.tar.xz -C $2 --strip=1
        rm $2.tar.xz
        tar -cf $2.tar.xz -C $2 .
    fi
}

pkgopen() {
    cd /sources
    tar -xf "$1".tar.*
    echo "$1" > .pkgname
    cd "$1"
}

pkgclose() {
    cd /sources
    rm -r "$(< .pkgname)"
}

source "$1.sh"
