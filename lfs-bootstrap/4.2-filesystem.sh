mkdir -pv "$LFS"/{etc,var} "$LFS"/usr/{bin,lib,sbin}

for i in bin lib sbin; do
  ln -sv usr/$i "$LFS"/$i
done

case $(uname -m) in
  x86_64) mkdir -pv "$LFS"/lib64 ;;
esac

mkdir -pv "$LFS"/tools

# These steps can be done earlier:

# 7.2 Virtual kernel file systems
mkdir -pv "$LFS"/{dev,proc,sys,run}

# 7.5 creating directories

mkdir -pv "$LFS"/{boot,home,mnt,opt,srv}

mkdir -pv "$LFS"/etc/{opt,sysconfig}
mkdir -pv "$LFS"/lib/firmware
mkdir -pv "$LFS"/media/{floppy,cdrom}
mkdir -pv "$LFS"/usr/{,local/}{include,src}
mkdir -pv "$LFS"/usr/lib/locale
mkdir -pv "$LFS"/usr/local/{bin,lib,sbin}
mkdir -pv "$LFS"/usr/{,local/}share/{color,dict,doc,info,locale,man}
mkdir -pv "$LFS"/usr/{,local/}share/{misc,terminfo,zoneinfo}
mkdir -pv "$LFS"/usr/{,local/}share/man/man{1..8}
mkdir -pv "$LFS"/var/{cache,local,log,mail,opt,spool}
mkdir -pv "$LFS"/var/lib/{color,misc,locate}

ln -sfv /run "$LFS"/var/run
ln -sfv /run/lock "$LFS"/var/lock

install -dv -m 0750 "$LFS"/root
install -dv -m 1777 "$LFS"/tmp "$LFS"/var/tmp
