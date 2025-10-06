pkgfetch https://github.com/fastfetch-cli/fastfetch/archive/2.51.1/fastfetch-2.51.1.tar.gz
pkgopen fastfetch-2.51.1
mkbuilddir
cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_FLASHFETCH=OFF      \
      ..
make
make install
pkgclose
