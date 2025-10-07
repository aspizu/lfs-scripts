pkgfetch https://xorg.freedesktop.org/archive/individual/lib/libxcb-1.17.0.tar.xz
pkgopen libxcb-1.17.0
./configure $XORG_CONFIG      \
            --without-doxygen \
            --docdir='${datadir}'/doc/libxcb-1.17.0
LC_ALL=en_US.UTF-8 make
make install
pkgclose
