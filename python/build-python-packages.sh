#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extramodules'
cd ${pwd}/*python-dpkt && makepkg -sf --noconfirm -d
cd ${pwd}/*python-grpcio && makepkg -sf --noconfirm -d
cd ${pwd}/*python-grpcio-tools && makepkg -sf --noconfirm -d
cd ${pwd}/*python-iptables && makepkg -df --noconfirm -d
cd ${pwd}/*python-jade-application-kit && makepkg -sf --noconfirm -d
cd ${pwd}/*python-marisa-trie && makepkg -sf -d --noconfirm -d
cd ${pwd}/*python-netfilterqueue && makepkg -d --noconfirm -d
cd ${pwd}/*python-powerline-git && makepkg -d --noconfirm -d
cd ${pwd}/*python-pychromecast && makepkg -sf --noconfirm -d
cd ${pwd}/*python-pydbus && makepkg -sf --noconfirm -d
echo 'building python packages'
