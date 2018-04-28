#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extramodules'
cd ${pwd}/*cinnamon && makepkg -sf --noconfirm -d
cd ${pwd}/*cinnamon-control-center && makepkg -sf --noconfirm -d
cd ${pwd}/*cinnamon-desktop && makepkg -sf --noconfirm -d
cd ${pwd}/*cinnamon-menus && makepkg -df --noconfirm -d
cd ${pwd}/*cinnamon-screensaver && makepkg -sf --noconfirm -d
cd ${pwd}/*cinnamon-session && makepkg -sf -d --noconfirm -d
cd ${pwd}/*cinnamon-settings-daemon && makepkg -d --noconfirm -d
cd ${pwd}/*cinnamon-translations && makepkg -d --noconfirm -d
cd ${pwd}/*cjs && makepkg -sf --noconfirm -d
cd ${pwd}/*iso-flag-png && makepkg -sf --noconfirm -d
cd ${pwd}/*muffin && makepkg -sf -d --noconfirm -d
cd ${pwd}/*nemo && makepkg -d --noconfirm -d
cd ${pwd}/*nemo-extensions && makepkg -sf --noconfirm -d
cd ${pwd}/*python-polib && makepkg -sf --noconfirm -d 
cd ${pwd}/*python-xapp && makepkg -sf --noconfirm -d
cd ${pwd}/*python2-polib && makepkg -sf -d --noconfirm -d
cd ${pwd}/*xapps && makepkg -d --noconfirm -d
echo 'create repo'
mkdir -p ${pwd}/repo-`uname -m`
mv ${pwd}/*/*`uname -m`.pkg* ${pwd}/repo-`uname -m`
ls ${pwd}/repo-`uname -m`
echo 'building extramodules done'
