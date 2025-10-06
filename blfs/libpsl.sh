pkgfetch https://github.com/rockdaboot/libpsl/releases/download/0.21.5/libpsl-0.21.5.tar.gz
pkgopen libpsl-0.21.5
mkbuilddir
meson setup --prefix=/usr --buildtype=release
ninja
ninja install
pkgclose
