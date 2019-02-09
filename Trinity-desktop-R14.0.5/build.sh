#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extramodules'
cd ${pwd}/*tde-tqt3 && makepkg -sf --noconfirm
cd ${pwd}/*tde-tqtinterface && makepkg -sf --noconfirm
cd ${pwd}/*tde-arts && makepkg -sf --noconfirm
cd ${pwd}/*tde-dbus-tqt && makepkg -df --noconfirm
cd ${pwd}/*tde-dbus-1-tqt && makepkg -sf --noconfirm
cd ${pwd}/*tde-tqca-tls && makepkg -sf -d --noconfirm
cd ${pwd}/*tde-libart-lgpl && makepkg -d --noconfirm
cd ${pwd}/*tde-avahi-tqt && makepkg -d --noconfirm
cd ${pwd}/*tde-tdelibs && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdebase && makepkg -sf --noconfirm
echo 'copy packages'
mv ${pwd}/*/*`uname -m`.pkg* /srv/ftp/userftp/mirror/
rm -Rf ${pwd}/*/{src,pkg} -f
echo 'building base packages done'

