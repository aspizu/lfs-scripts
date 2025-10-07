pkgfetch https://xorg.freedesktop.org/archive/individual/proto/xcb-proto-1.17.0.tar.xz
pkgopen xcb-proto-1.17.0
PYTHON=python3 ./configure $XORG_CONFIG
make install
pkgclose
