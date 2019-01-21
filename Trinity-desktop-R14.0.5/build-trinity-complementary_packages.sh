#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extramodules'
cd ${pwd}/*tde-dbus-1-tqt && makepkg -sf --noconfirm
cd ${pwd}/*tde-dbus-tqt && makepkg -sf --noconfirm
cd ${pwd}/*tde-ksplash && makepkg -sf --noconfirm
cd ${pwd}/*tde-libart-lgpl && makepkg -df --noconfirm
cd ${pwd}/*tde-libcaldav && makepkg -sf --noconfirm
cd ${pwd}/*tde-tde-libcarddav && makepkg -sf -d --noconfirm
cd ${pwd}/*tde-libkdcraw && makepkg -d --noconfirm
cd ${pwd}/*tde-libkexiv2 && makepkg -d --noconfirm
cd ${pwd}/*tde-lipstick && makepkg -sf --noconfirm
cd ${pwd}/*tde-qtcurve && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdeaccessibility && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdeaddons && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdeadmin && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdeartwork && makepkg -df --noconfirm
cd ${pwd}/*tde-tdebindings && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdeedu && makepkg -sf -d --noconfirm
cd ${pwd}/*tde-tdegames && makepkg -d --noconfirm
cd ${pwd}/*tde-tdegraphics && makepkg -d --noconfirm
cd ${pwd}/*tde-tdemultimedia && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdenetwork && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdepim && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdesdk && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdetoys && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdeutils && makepkg -df --noconfirm
cd ${pwd}/*tde-tdevelop && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdewebdev && makepkg -sf -d --noconfirm
cd ${pwd}/*tde-tqca-tls && makepkg -d --noconfirm
echo 'copy packages'
mv ${pwd}/*/*`uname -m`.pkg* /srv/ftp/userftp/mirror/
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extra packages done'

