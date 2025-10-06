#!/usr/bin/env bash
set -ex

wget -c https://mirror-hk.koddos.net/lfs/lfs-packages/lfs-packages-12.4.tar
mkdir -p /mnt/lfs/sources
tar -xf lfs-packages-12.4.tar -C /mnt/lfs/sources --strip-components=1

# Fix ncurses filename
mv /mnt/lfs/sources/ncurses-6.5-20250809.tgz /mnt/lfs/sources/ncurses-6.5-20250809.tar.gz
# Download correct version of lfs-bootscripts
cd /mnt/lfs/sources
wget -c https://www.linuxfromscratch.org/lfs/downloads/12.4/lfs-bootscripts-20250827.tar.xz
# (optional) required to download BLFS packages
wget -c https://ftp.gnu.org/gnu/wget/wget-1.25.0.tar.gz
# just for reference
wget -c https://www.linuxfromscratch.org/hints/downloads/hints.tar.bz2
tar -xf hints.tar.bz2
rm hints.tar.bz2
