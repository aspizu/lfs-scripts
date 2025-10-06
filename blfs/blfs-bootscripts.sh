if [[ -z $2 ]]; then
    echo "Usage: ./lfs-install.sh blfs/blfs-bootscripts <init-script>"
fi
pkgfetch https://anduin.linuxfromscratch.org/BLFS/blfs-bootscripts/blfs-bootscripts-20250225.tar.xz
pkgopen blfs-bootscripts-20250225
make install-$2
pkgclose
