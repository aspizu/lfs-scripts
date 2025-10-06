# lfs-scripts for LFS v12.4

These are automated scripts to build a minimal Linux From Scratch (LFS) v12.4 system.

## Considerations

1. No `lfs` user is created, building the system is performed as `root`
2. Optional packages and documentation/manuals are not built
3. The following packages are not built:

- `Man-pages`
- `Tcl`
- `Expect`
- `DejaGNU`
- `GRUB`
- `Vim`

4. Stripping of debug symbols is not performed.
5. System configuration is not performed (Chapter 9 and onwards)

## Follow the instructions in the book up until the following chapter

### Chapter 4. Final Preparations

#### 4.2. Creating a Limited Directory Layout in the LFS Filesystem

No need to follow instructions from 4.2, continue with the steps below.

## A. Cloning the `lfs-scripts` repository

```sh
cd /mnt/lfs
mkdir -p sources
cd sources
git clone https://github.com/aspizu/lfs-scripts
cd lfs-scripts
```

## B. Checking if host has necessary tools

```sh
bash ./lfs-version-check.sh
```

At this point you should install any missing tools reported by the script.

## C. Downloading and extracting source packages

```sh
bash ./lfs-sources.sh
```

## D. Building the temporary toolchain

```sh
bash ./auto-bootstrap.sh
```

If any of the build steps fail, figure out the last successful step, fix the problem.
You can read `/mnt/lfs/sources/.pkgname` file to know the last package that was built.
Then, comment out all the steps before it in the `auto-bootstrap.sh` script and run it again.

## E. Entering the chroot environment

```sh
bash ./lfs-chroot.sh
```

## F. Building the final system

```sh
bash ./auto-install-1.sh
```

Optionally create a backup of your current `/mnt/lfs` directory.

```sh
bash ./auto-install-2.sh
```

After this you must exit and re-enter the chroot environment to load the newly built
bash.

```sh
bash ./auto-install-3.sh
```

## G. Continue with the instructions in the book from the following chapter:

### Chapter 8. Installing Basic System Software

#### 8.84. Stripping

# Beyond Linux From Scratch (System V Edition) v12.4

Install `wget` first as it is required to download other packages.

```sh
./lfs-install.sh blfs/wget
```

## Installing a bootscript from `blfs-bootscripts`

```sh
./lfs-install.sh blfs/blfs-bootscripts <init-script>
```
