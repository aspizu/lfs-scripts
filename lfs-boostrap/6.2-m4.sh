pkgopen m4-1.4.20
./configure --prefix=/usr     \
            --host="$LFS_TGT" \
            --build="$(build-aux/config.guess)"
make
make DESTDIR="$LFS" install
pkgclose
