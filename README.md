# condres-packages
Official packages Condres OS

New MacOS theme:

Install packages: sudo pacman -S condres-mac-icons gnome-osx-hsierra-gtk-theme gnome-osx-shell-theme 

Screenshot:
![Condres OS Mac theme](https://repository.codelinsoft.it/theme-mac.png)

# Trinity Condres OS PKGBUILD
PKGBUILD's for building Trinity on Condres OS

## Before installing
Before installing please remove any presence of JRE and RUBY packages, 
after install you can put them back.


## How to build Trinity with these Files
If you have trouble building one of these packages,
please source the environment variables by issuing (from package directory):
```
. ../environment
```
OR
```
source ../environment
```
OR
```
export PREFIX=/opt/trinity
export SYSCONFDIR=/etc/trinity
export LIBDIR=/opt/trinity/lib
export MANDIR=/opt/trinity/man
export QTDIR=/opt/trinity/tqt3
export PATH=/opt/trinity/tqt3/bin:/opt/trinity/bin:$PATH
export LD_LIBRARY_PATH=/opt/trinity/lib:/opt/trinity/lib/trinity:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=:/opt/trinity/lib/pkgconfig:/opt/trinity/tqt3/lib/pkgconfig:$PKG_CONFIG_PATH
export DEBUG_AUTOTOOL_OPT=""
export DEBUG_CMAKE_OPT=""
export SVN_LIBRARY_DIR=/usr/lib
```

This script will get you to a basic Trinity environment
```
./build.sh
```
Language package
```
./build-trinity-language.sh

```
Applications
```
./build-trinity-applications.sh
```
PKGBUILD fork to Michael Manley. 

Build cmake package:
```
cmake  \
   -DCMAKE_C_FLAGS:STRING="$CPUOPTIONS" \
   -DCMAKE_CXX_FLAGS:STRING="$CPUOPTIONS $DEBUG_CMAKE_OPT" \
   -DCMAKE_INSTALL_PREFIX=${PREFIX} \
   -DSYSCONF_INSTALL_DIR=${SYSCONFDIR} \
   -DLIB_SUFFIX=${LIBDIRSUFFIX} \
   -DMAN_INSTALL_DIR=${MANDIR} \
   -DBUILD_ALL=ON ..
 make VERBOSE=1
```


