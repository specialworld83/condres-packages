#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extramodules'
cd ${pwd}/*acpi_call-master && makepkg -sf --noconfirm
cd ${pwd}/*bbswitch-master && makepkg -sf --noconfirm
cd ${pwd}/*broadcom-wl-master && makepkg -sf --noconfirm
cd ${pwd}/*catalyst-master && makepkg -df --noconfirm
cd ${pwd}/*ndiswrapper-master && makepkg -sf --noconfirm
cd ${pwd}/*nvidia-340xx-master && makepkg -sf -d --noconfirm
cd ${pwd}/*nvidia-390xx-master && makepkg -d --noconfirm
cd ${pwd}/*nvidia-master && makepkg -d --noconfirm
cd ${pwd}/*nvidiabl-master && makepkg -sf --noconfirm
cd ${pwd}/*r8168-master && makepkg -sf --noconfirm
cd ${pwd}/*rtl8723bu-master && makepkg -sf --noconfirm
cd ${pwd}/*spl_zfs-master && makepkg -sf --noconfirm
cd ${pwd}/*tp_smapi-master && makepkg -sf --noconfirm
cd ${pwd}/*vhba-module-master && makepkg -df --noconfirm
cd ${pwd}/*virtualbox-modules-master && makepkg -sf --noconfirm
echo 'copy packages'
mv ${pwd}/*/*`uname -m`.pkg* /srv/ftp/userftp/mirror/testing/
echo 'building language done'
rm -Rf ${pwd}/*/{src}
