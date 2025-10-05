pkgopen tar-1.35
./configure --prefix=/usr   \
            --host="$LFS_TGT" \
            --build="$(build-aux/config.guess)"
make
make DESTDIR="$LFS" install
pkgclose
