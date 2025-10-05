pkgopen xz-5.8.1
./configure --prefix=/usr                       \
            --host="$LFS_TGT"                   \
            --build="$(build-aux/config.guess)" \
            --disable-static                    \
            --docdir=/usr/share/doc/xz-5.8.1
make
make DESTDIR="$LFS" install
rm -v "$LFS/usr/lib/liblzma.la"
pkgclose
