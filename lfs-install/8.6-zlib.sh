pkgopen zlib-1.3.1
./configure --prefix=/usr
make
make install
rm -fv /usr/lib/libz.a
pkgclose
