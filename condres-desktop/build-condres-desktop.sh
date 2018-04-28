#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extramodules'
cd ${pwd}/*gnome-shell-extension-condres-dash && makepkg -sf --noconfirm
cd ${pwd}/*gnome-shell-extension-condres-media-controls && makepkg -sf --noconfirm
cd ${pwd}/*gnome-shell-extension-condres-menu && makepkg -sf --noconfirm
cd ${pwd}/*gnome-shell-extension-condres-overview && makepkg -df --noconfirm
cd ${pwd}/*gnome-shell-extension-condres-panel && makepkg -sf --noconfirm
cd ${pwd}/*gnome-shell-extension-condres-taskbar && makepkg -sf -d --noconfirm
cd ${pwd}/*gnome-shell-extension-condres-tray && makepkg -d --noconfirm
cd ${pwd}/*gnome-shell-extension-condres-window-list-bottom-panel && makepkg -d --noconfirm
cd ${pwd}/*gnome-shell-extension-condres-window-list-main-panel && makepkg -sf --noconfirm
cd ${pwd}/*gnome-shell-extensions-condres-desktop && makepkg -sf --noconfirm
echo 'create repo'
mkdir -p ${pwd}/repo-`uname -m`
mv ${pwd}/*/*`uname -m`.pkg* ${pwd}/repo-`uname -m`
ls ${pwd}/repo-`uname -m`
echo 'building extramodules done'
