pkgopen glibc-2.42
case $(uname -m) in
    i?86)   ln -sfv ld-linux.so.2 "$LFS"/lib/ld-lsb.so.3
    ;;
    x86_64) ln -sfv ../lib/ld-linux-x86-64.so.2 "$LFS"/lib64
            ln -sfv ../lib/ld-linux-x86-64.so.2 "$LFS"/lib64/ld-lsb-x86-64.so.3
    ;;
esac
patch -Np1 -i ../glibc-2.42-fhs-1.patch
mkbuilddir
echo "rootsbindir=/usr/sbin" > configparms
../configure                               \
      --prefix=/usr                        \
      --host="$LFS_TGT"                    \
      --build="$(../scripts/config.guess)" \
      --disable-nscd                       \
      libc_cv_slibdir=/usr/lib             \
      --enable-kernel=5.4
make
make DESTDIR="$LFS" install
sed '/RTLDLIST=/s@/usr@@g' -i "$LFS"/usr/bin/ldd
pkgclose
