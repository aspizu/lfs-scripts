pkgfetch https://www.x.org/archive//individual/lib/libXfont-1.5.4.tar.gz
pkgopen libXfont-1.5.4
./configure $XORG_CONFIG --docdir=$XORG_PREFIX/share/doc/libXfont-1.5.4 --disable-devel-docs
make
make install
/sbin/ldconfig
pkgclose
