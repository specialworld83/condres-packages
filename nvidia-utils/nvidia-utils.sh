#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extramodules'
cd ${pwd}/*nvidia-340xx-utils && makepkg -sf --noconfirm
cd ${pwd}/*nvidia-390xx-utils && makepkg -sf --noconfirm
cd ${pwd}/*nvidia-utils && makepkg -sf --noconfirm
echo 'copy packages'
mv ${pwd}/*/*`uname -m`.pkg* /srv/ftp/userftp/mirror/
rm -Rf ${pwd}/*/{src}
echo 'building language done'

