#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building perl module'
cd ${pwd}/*perl-expect && makepkg -sf --noconfirm -d
cd ${pwd}/*perl-io-socket-multicast && makepkg -sf --noconfirm -d
cd ${pwd}/*perl-class-std && makepkg -sf --noconfirm -d
cd ${pwd}/*perl-class-std-fast && makepkg -df --noconfirm -d
cd ${pwd}/*perl-cpanel-json-xs && makepkg -sf --noconfirm -d
cd ${pwd}/*perl-json-maybexs && makepkg -sf -d --noconfirm -d
cd ${pwd}/*perl-net-sftp-foreign && makepkg -d --noconfirm -d
cd ${pwd}/*perl-php-serialization && makepkg -d --noconfirm -d
cd ${pwd}/*perl-soap-wsdl && makepkg -sf --noconfirm -d
cd ${pwd}/*perl-sys-cpu && makepkg -sf --noconfirm -d
cd ${pwd}/*perl-sys-meminfo && makepkg -sf -d --noconfirm -d
cd ${pwd}/*perl-sys-mmap && makepkg -d --noconfirm -d
cd ${pwd}/*perl-uri-encode && makepkg -sf --noconfirm -d
echo 'create repo'
mkdir -p ${pwd}/repo-`uname -m`
mv ${pwd}/*/*`uname -m`.pkg* ${pwd}/repo-`uname -m`
ls ${pwd}/repo-`uname -m`
echo 'building perl module done'
