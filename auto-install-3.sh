#!/usr/bin/env bash
set -ex

lfs-install() {
    bash lfs-install.sh "lfs-install/$1"
}

lfs-install 8.37-libtool
lfs-install 8.38-gdbm
lfs-install 8.39-gperf
lfs-install 8.40-expat
lfs-install 8.41-inetutils
lfs-install 8.42-less
lfs-install 8.43-perl
lfs-install 8.44-xml-parser
lfs-install 8.45-intltool
lfs-install 8.46-autoconf
lfs-install 8.47-automake
lfs-install 8.48-openssl
lfs-install 8.49-libelf
lfs-install 8.50-libffi
lfs-install 8.51-python
lfs-install 8.52-flit-core
lfs-install 8.53-packaging
lfs-install 8.54-wheel
lfs-install 8.55-setuptools
lfs-install 8.56-ninja
lfs-install 8.57-meson
lfs-install 8.58-kmod
lfs-install 8.59-coreutils
lfs-install 8.60-diffutils
lfs-install 8.61-gawk
lfs-install 8.62-findutils
lfs-install 8.63-groff
lfs-install 8.65-gzip
lfs-install 8.66-iproute2
lfs-install 8.67-kbd
lfs-install 8.68-libpipeline
lfs-install 8.69-make
lfs-install 8.70-patch
lfs-install 8.71-tar
lfs-install 8.72-texinfo
lfs-install 8.74-markupsafe
lfs-install 8.75-jinja2
lfs-install 8.76-udev
lfs-install 8.78-procps-ng
lfs-install 8.79-util-linux
lfs-install 8.80-e2fsprogs
lfs-install 8.81-sysklogd
lfs-install 8.82-sysvinit
lfs-install 8.85-cleanup
lfs-install 9.2-lfs-bootscripts
echo "Continue with Chapter 9"
