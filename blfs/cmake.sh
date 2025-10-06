pkgfetch https://cmake.org/files/v4.1/cmake-4.1.0.tar.gz
pkgopen cmake-4.1.0
sed -i '/"lib64"/s/64//' Modules/GNUInstallDirs.cmake
./bootstrap --prefix=/usr        \
            --system-libs        \
            --mandir=/share/man  \
            --no-system-jsoncpp  \
            --no-system-cppdap   \
            --no-system-librhash \
            --docdir=/share/doc/cmake-4.1.0 &&
make
make install
pkgclose
