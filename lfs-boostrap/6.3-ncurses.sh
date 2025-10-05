pkgopen ncurses-6.5-20250809
mkdir build
pushd build || exit
  ../configure --prefix="$LFS"/tools AWK=gawk
  make -C include
  make -C progs tic
  install progs/tic "$LFS"/tools/bin
popd || exit
./configure --prefix=/usr                \
            --host="$LFS_TGT"            \
            --build="$(./config.guess)"  \
            --mandir=/usr/share/man      \
            --with-manpage-format=normal \
            --with-shared                \
            --without-normal             \
            --with-cxx-shared            \
            --without-debug              \
            --without-ada                \
            --disable-stripping          \
            AWK=gawk
make
make DESTDIR="$LFS" install
ln -sv libncursesw.so "$LFS"/usr/lib/libncurses.so
sed -e 's/^#if.*XOPEN.*$/#if 1/' \
    -i "$LFS"/usr/include/curses.h
pkgclose
