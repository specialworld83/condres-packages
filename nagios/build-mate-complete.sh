#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extramodules'
cd ${pwd}/*nagios && makepkg -sf --noconfirm
cd ${pwd}/*mod_python2 && makepkg -df --noconfirm
cd ${pwd}/*check_mk && makepkg -sf --noconfirm
cd ${pwd}/*check_md_raid && makepkg -sf -d --noconfirm
cd ${pwd}/*nagios-nrpe-plugin && makepkg -d --noconfirm
cd ${pwd}/*nagiosql && makepkg -d --noconfirm
echo 'building nagios done'
