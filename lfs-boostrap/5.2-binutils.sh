pkgopen binutils-2.45
mkbuilddir
../configure --prefix="$LFS"/tools \
             --with-sysroot="$LFS" \
             --target="$LFS_TGT"   \
             --disable-nls         \
             --enable-gprofng=no   \
             --disable-werror      \
             --enable-new-dtags    \
             --enable-default-hash-style=gnu
make
make install
pkgclose
