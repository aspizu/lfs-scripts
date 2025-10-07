pkgfetch https://xorg.freedesktop.org/archive/individual/proto/xorgproto-2024.1.tar.xz
pkgopen
mkbuilddir
meson setup --prefix=$XORG_PREFIX ..
ninja
ninja install
mv -v $XORG_PREFIX/share/doc/xorgproto{,-2024.1}
pkgclose
