#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extramodules'
cd ${pwd}/*tde-i18n-af && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-ar && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-az && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-be && makepkg -df --noconfirm
cd ${pwd}/*tde-i18n-bg && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-bn && makepkg -sf -d --noconfirm
cd ${pwd}/*tde-i18n-br && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-bs && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-ca && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-cs && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-csb && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-cy && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-da && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-de && makepkg -df --noconfirm
cd ${pwd}/*tde-i18n-el && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-en_GB && makepkg -sf -d --noconfirm
cd ${pwd}/*tde-i18n-eo && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-es && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-et && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-eu && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-fa && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-fi && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-fr && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-fy && makepkg -df --noconfirm
cd ${pwd}/*tde-i18n-ga && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-gl && makepkg -sf -d --noconfirm
cd ${pwd}/*tde-i18n-he && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-hi && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-hr && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-hu && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-is && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-it && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-ja && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-kk && makepkg -df --noconfirm
cd ${pwd}/*tde-i18n-km && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-ko && makepkg -sf -d --noconfirm
cd ${pwd}/*tde-i18n-lt && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-lv && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-mk && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-mn && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-ms && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-nb && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-nds && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-nl && makepkg -df --noconfirm
cd ${pwd}/*tde-i18n-nn && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-pa && makepkg -sf -d --noconfirm
cd ${pwd}/*tde-i18n-pl && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-pt && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-pt_BR && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-ro && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-ru && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-rw && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-se && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-se && makepkg -df --noconfirm
cd ${pwd}/*tde-i18n-sl && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-sr && makepkg -sf -d --noconfirm
cd ${pwd}/*tde-i18n-sr@Latn && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-ss && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-sv && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-ta && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-te && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-tg && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-th && makepkg -df --noconfirm
cd ${pwd}/*tde-i18n-tr && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-uk && makepkg -sf -d --noconfirm
cd ${pwd}/*tde-i18n-uz && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-uz@cyrillic && makepkg -d --noconfirm
cd ${pwd}/*tde-i18n-vi && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-wa && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-zh_CN && makepkg -sf --noconfirm
cd ${pwd}/*tde-i18n-zh_TW && makepkg -sf --noconfirm
echo 'building extramodules done'
rm -Rf ${pwd}/*/{src}
