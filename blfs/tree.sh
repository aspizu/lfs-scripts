pkgfetch https://gitlab.com/OldManProgrammer/unix-tree/-/archive/2.2.1/unix-tree-2.2.1.tar.bz2
pkgopen unix-tree-2.2.1
make
make PREFIX=/usr MANDIR=/usr/share/man install
pkgclose
