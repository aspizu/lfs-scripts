pkgfetch https://www.x.org/pub/individual/lib/libXau-1.0.12.tar.xz
pkgopen libXau-1.0.12
./configure $XORG_CONFIG
make
make install
pkgclose
