pkgopen gdbm-1.26
./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat
make
make install
pkgclose
