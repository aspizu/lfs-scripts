pkgfetch https://www.kernel.org/pub/software/scm/git/git-2.50.1.tar.xz
pkgopen git-2.50.1
./configure --prefix=/usr \
            --with-gitconfig=/etc/gitconfig \
            --with-python=python3
make
make perllibdir=/usr/lib/perl5/5.42/site_perl install
pkgclose
