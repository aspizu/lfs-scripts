pkgopen xz-5.8.1
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.8.1
make
make install
pkgclose
