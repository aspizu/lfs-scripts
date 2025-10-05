pkgopen libffi-3.5.2
./configure --prefix=/usr    \
            --disable-static \
            --with-gcc-arch=native
make
make install
pkgclose
