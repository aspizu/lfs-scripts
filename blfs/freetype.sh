pkgfetch https://downloads.sourceforge.net/freetype/freetype-2.13.3.tar.xz
pkgopen freetype-2.13.3
sed -ri "s:.*(AUX_MODULES.*valid):\1:" modules.cfg

sed -r "s:.*(#.*SUBPIXEL_RENDERING) .*:\1:" \
    -i include/freetype/config/ftoption.h

./configure --prefix=/usr --enable-freetype-config --disable-static
make
make install
pkgclose
