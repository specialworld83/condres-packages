#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extramodules'
cd ${pwd}/*atril && makepkg -sf --noconfirm
#cd ${pwd}/*brisk-menu && makepkg -sf --noconfirm
#cd ${pwd}/*caja && makepkg -sf --noconfirm
cd ${pwd}/*caja-extensions && makepkg -df --noconfirm
cd ${pwd}/*caja-extensions-common && makepkg -sf --noconfirm
cd ${pwd}/*caja-gksu && makepkg -sf -d --noconfirm
cd ${pwd}/*caja-image-converter && makepkg -d --noconfirm
cd ${pwd}/*caja-open-terminal && makepkg -d --noconfirm
cd ${pwd}/*caja-sendto && makepkg -sf --noconfirm
cd ${pwd}/*caja-share && makepkg -sf --noconfirm
cd ${pwd}/*engrampa && makepkg -sf -d --noconfirm
cd ${pwd}/*eom && makepkg -d --noconfirm
cd ${pwd}/*libmatekbd && makepkg -d --noconfirm
cd ${pwd}/*libmatemixer && makepkg -sf --noconfirm
cd ${pwd}/*libmateweather && makepkg -sf --noconfirm
cd ${pwd}/*marco && makepkg -sf --noconfirm
cd ${pwd}/*mate-applets && makepkg -sf --noconfirm
cd ${pwd}/*mate-backgrounds && makepkg -sf -d --noconfirm
cd ${pwd}/*mate-calc && makepkg -d --noconfirm
cd ${pwd}/*mate-common && makepkg -d --noconfirm
cd ${pwd}/*mate-control-center && makepkg -sf --noconfirm
cd ${pwd}/*mate-desktop && makepkg -sf --noconfirm
cd ${pwd}/*mate-icon-theme && makepkg -sf --noconfirm
cd ${pwd}/*mate-media && makepkg -sf --noconfirm
cd ${pwd}/*mate-menus && makepkg -sf -d --noconfirm
cd ${pwd}/*mate-notification-daemon && makepkg -d --noconfirm
cd ${pwd}/*mate-panel && makepkg -d --noconfirm
cd ${pwd}/*mate-polkit && makepkg -sf --noconfirm
cd ${pwd}/*mate-power-manager && makepkg -sf --noconfirm
cd ${pwd}/*mate-screensaver && makepkg -d --noconfirm
cd ${pwd}/*mate-sensors-applet && makepkg -d --noconfirm
cd ${pwd}/*mate-session-manager && makepkg -sf --noconfirm
cd ${pwd}/*mate-settings-daemon && makepkg -sf --noconfirm
cd ${pwd}/*mate-system-monitor && makepkg -sf --noconfirm
cd ${pwd}/*mate-terminal && makepkg -sf --noconfirm
cd ${pwd}/*mate-themes && makepkg -sf -d --noconfirm
cd ${pwd}/*mate-user-guide && makepkg -d --noconfirm
cd ${pwd}/*mate-user-share && makepkg -d --noconfirm
cd ${pwd}/*mate-utils && makepkg -sf --noconfirm
cd ${pwd}/*mozo && makepkg -sf --noconfirm
cd ${pwd}/*pluma && makepkg -sf --noconfirm
cd ${pwd}/*python-caja && makepkg -sf --noconfirm
echo 'building extramodules done'
