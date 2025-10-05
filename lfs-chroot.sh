#!/usr/bin/env bash
set -ex

LFS=/mnt/lfs
export LFS

mount -vt devpts devpts -o gid=5,mode=0620 $LFS/dev/pts
mount -vt proc proc $LFS/proc
mount -vt sysfs sysfs $LFS/sys
mount -vt tmpfs tmpfs $LFS/run
if [ -h $LFS/dev/shm ]; then
  install -v -d -m 1777 "$LFS$(realpath /dev/shm)"
else
  mount -vt tmpfs -o nosuid,nodev tmpfs $LFS/dev/shm
fi
chroot "$LFS" /usr/bin/env -i   \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='\[\e[37m\](lfs-chroot) \[\e[92m\]\u@\h\[\e[0m\] \w \[\e[37m\]\$\[\e[0m\] ' \
    PATH=/usr/bin:/usr/sbin     \
    MAKEFLAGS="-j$(nproc)"      \
    TESTSUITEFLAGS="-j$(nproc)" \
    /bin/bash --login
umount -R $LFS/dev/shm
umount -R $LFS/dev/pts
umount -R $LFS/{sys,proc,run,dev}
