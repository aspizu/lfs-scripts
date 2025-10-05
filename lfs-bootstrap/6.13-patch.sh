pkgopen patch-2.8
./configure --prefix=/usr   \
            --host="$LFS_TGT" \
            --build="$(build-aux/config.guess)"
make
make DESTDIR="$LFS" install
pkgclose
