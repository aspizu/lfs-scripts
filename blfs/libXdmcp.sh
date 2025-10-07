pkgfetch https://www.x.org/pub/individual/lib/libXdmcp-1.1.5.tar.xz
pkgopen
./configure $XORG_CONFIG --docdir=/usr/share/doc/libXdmcp-1.1.5
make
make install
pkgclose
