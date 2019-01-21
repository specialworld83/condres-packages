#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extramodules'
cd ${pwd}/*gtk3-tqt-engine && makepkg -Lsci 
cd ${pwd}/*gtk-qt-engine && makepkg -Lsci 
cd ${pwd}/*tde-amarok && makepkg -Lsci 
cd ${pwd}/*tde-kmplayer && makepkg -Lsci 
cd ${pwd}/*tde-krusader && makepkg -Lsci 
cd ${pwd}/*tde-ksplash-engine-moodin && makepkg -Lsci -d 
cd ${pwd}/*tde-systemsettings && makepkg -Lsci 
cd ${pwd}/*tde-tdenetworkmanager && makepkg -Lsci 
cd ${pwd}/*tde-tdepowersave && makepkg -Lsci 
cd ${pwd}/*tde-tdesudo && makepkg -Lsci 
cd ${pwd}/*tde-tdmtheme && makepkg -Lsci 
cd ${pwd}/*tde-twin-style-crystal && makepkg -Lsci 
echo 'copy packages'
mv ${pwd}/*/*`uname -m`.pkg* /srv/ftp/userftp/mirror/
rm -R ${pwd}/*/{src,pkg} -f
echo 'building application done'

