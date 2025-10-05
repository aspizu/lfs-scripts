#!/usr/bin/env bash
set -ex

wget -c https://mirror-hk.koddos.net/lfs/lfs-packages/lfs-packages-12.4.tar
mkdir -p /mnt/lfs/sources
tar -xf lfs-packages-12.4.tar -C /mnt/lfs/sources
