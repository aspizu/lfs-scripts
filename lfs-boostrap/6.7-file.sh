pkgopen file-5.46
mkdir build
pushd build || exit
  ../configure --disable-bzlib      \
               --disable-libseccomp \
               --disable-xzlib      \
               --disable-zlib
  make
popd || exit
./configure --prefix=/usr --host="$LFS_TGT" --build="$(./config.guess)"
make FILE_COMPILE="$(pwd)/build/src/file"
make DESTDIR="$LFS" install
rm -v "$LFS/usr/lib/libmagic.la"
pkgclose
