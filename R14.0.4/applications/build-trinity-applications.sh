#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extramodules'
cd ${pwd}/*gtk3-tqt-engine && makepkg -sf --noconfirm
cd ${pwd}/*gtk-qt-engine && makepkg -sf --noconfirm
cd ${pwd}/*tde-amarok && makepkg -sf --noconfirm
cd ${pwd}/*tde-kmplayer && makepkg -df --noconfirm
cd ${pwd}/*tde-krusader && makepkg -sf --noconfirm
cd ${pwd}/*tde-ksplash-engine-moodin && makepkg -sf -d --noconfirm
cd ${pwd}/*tde-systemsettings && makepkg -d --noconfirm
cd ${pwd}/*tde-tdenetworkmanager && makepkg -d --noconfirm
cd ${pwd}/*tde-tdepowersave && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdesudo && makepkg -sf --noconfirm
cd ${pwd}/*tde-tdmtheme && makepkg -sf --noconfirm
cd ${pwd}/*tde-twin-style-crystal && makepkg -sf --noconfirm
echo 'create repo'
mkdir -p ${pwd}/repo-`uname -m`
mv ${pwd}/*/*`uname -m`.pkg* ${pwd}/repo-`uname -m`
ls ${pwd}/repo-`uname -m`
echo 'building extramodules done'
