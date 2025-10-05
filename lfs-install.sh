#!/usr/bin/env bash
set -ex

mkbuilddir() {
    mkdir -p build
    cd build
}

pkgopen() {
    cd /sources
    tar -xf "$1".tar.*
    echo "$1" > .pkgname
}

pkgclose() {
    cd /sources
    rm -r "$(< .pkgname)"
}

source "$1"
