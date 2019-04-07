#!/bin/bash

pwd=`pwd`

if [ "`sudo cat /etc/sudoers | grep pacman`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/pacman' to your /etc/sudoers file"
   exit 1
fi

echo 'cleaning environment'
rm -R ${pwd}/*/{src,pkg} -f
echo 'building extramodules'
cd ${pwd}/*cerbere && makepkg -sf --noconfirm
cd ${pwd}/*cerbere-git && makepkg -sf --noconfirm
cd ${pwd}/*contractor-git && makepkg -sf --noconfirm
cd ${pwd}/*elementary-icon-theme-git && makepkg -df --noconfirm
cd ${pwd}/*elementary-wallpapers && makepkg -sf --noconfirm
cd ${pwd}/*elementary-wallpapers-git && makepkg -sf -d --noconfirm
cd ${pwd}/*gala && makepkg -d --noconfirm
cd ${pwd}/*gala-git && makepkg -d --noconfirm
cd ${pwd}/*granite-git && makepkg -sf --noconfirm
cd ${pwd}/*gsignond && makepkg -sf --noconfirm
cd ${pwd}/*gsignond-plugin-lastfm-git && makepkg -sf --noconfirm
cd ${pwd}/*gsignond-plugin-oauth-git && makepkg -sf --noconfirm
cd ${pwd}/*gsignond-plugin-sasl-git && makepkg -sf --noconfirm
cd ${pwd}/*gtk-theme-elementary && makepkg -df --noconfirm
cd ${pwd}/*gtk-theme-elementary-git && makepkg -sf --noconfirm
cd ${pwd}/*libmutter2 && makepkg -sf -d --noconfirm
cd ${pwd}/*lightdm-pantheon-greeter && makepkg -d --noconfirm
cd ${pwd}/*lightdm-pantheon-greeter-git && makepkg -d --noconfirm
cd ${pwd}/*pantheon-applications-menu && makepkg -sf --noconfirm
cd ${pwd}/*pantheon-applications-menu-git && makepkg -sf --noconfirm
cd ${pwd}/*pantheon-calculator-git && makepkg -sf --noconfirm
cd ${pwd}/*pantheon-calendar-git && makepkg -sf --noconfirm
cd ${pwd}/*pantheon-camera-git && makepkg -sf --noconfirm
cd ${pwd}/*pantheon-code-git && makepkg -df --noconfirm
cd ${pwd}/*pantheon-default-settings-git && makepkg -sf --noconfirm
cd ${pwd}/*pantheon-dpms-helper-git && makepkg -sf -d --noconfirm
cd ${pwd}/*pantheon-files-git && makepkg -d --noconfirm
cd ${pwd}/*pantheon-geoclue2-agent-git && makepkg -d --noconfirm
cd ${pwd}/*pantheon-mail && makepkg -sf --noconfirm
cd ${pwd}/*pantheon-mail-git && makepkg -sf --noconfirm
cd ${pwd}/*pantheon-music-git && makepkg -sf --noconfirm
cd ${pwd}/*pantheon-photos && makepkg -sf --noconfirm
cd ${pwd}/*pantheon-photos-git && makepkg -sf --noconfirm
cd ${pwd}/*pantheon-polkit-agent-git && makepkg -df --noconfirm
cd ${pwd}/*pantheon-polkit-agent-git && makepkg -sf --noconfirm
cd ${pwd}/*pantheon-screenshot-git && makepkg -sf -d --noconfirm
cd ${pwd}/*pantheon-session-git && makepkg -d --noconfirm
cd ${pwd}/*pantheon-shortcut-overlay-git && makepkg -d --noconfirm
cd ${pwd}/*pantheon-terminal-git && makepkg -sf --noconfirm
cd ${pwd}/*pantheon-videos-git && makepkg -sf --noconfirm
cd ${pwd}/*slingshot-launcher && makepkg -sf --noconfirm
cd ${pwd}/*snap-photobooth && makepkg -sf --noconfirm
cd ${pwd}/*sound-theme-elementary-git && makepkg -sf --noconfirm
cd ${pwd}/*switchboard-git && makepkg -df --noconfirm
cd ${pwd}/*switchboard-plug-a11y && makepkg -sf --noconfirm
cd ${pwd}/*switchboard-plug-a11y-git && makepkg -sf -d --noconfirm
cd ${pwd}/*switchboard-plug-about-git && makepkg -d --noconfirm
cd ${pwd}/*switchboard-plug-applications-git && makepkg -d --noconfirm
cd ${pwd}/*switchboard-plug-bluetooth-git && makepkg -sf --noconfirm
cd ${pwd}/*switchboard-plug-datetime-git && makepkg -sf --noconfirm
cd ${pwd}/*switchboard-plug-desktop-git && makepkg -sf --noconfirm
cd ${pwd}/*switchboard-plug-display-git && makepkg -sf --noconfirm
cd ${pwd}/*switchboard-plug-keyboard-git && makepkg -sf --noconfirm
cd ${pwd}/*switchboard-plug-locale-git && makepkg -df --noconfirm
cd ${pwd}/*switchboard-plug-mouse-touchpad-git && makepkg -sf --noconfirm
cd ${pwd}/*switchboard-plug-network-git && makepkg -sf -d --noconfirm
cd ${pwd}/*switchboard-plug-notifications-git && makepkg -d --noconfirm
cd ${pwd}/*switchboard-plug-online-accounts && makepkg -d --noconfirm
cd ${pwd}/*switchboard-plug-online-accounts-git && makepkg -sf --noconfirm
cd ${pwd}/*switchboard-plug-parental-controls-git && makepkg -sf --noconfirm
cd ${pwd}/*switchboard-plug-power-git && makepkg -sf --noconfirm
cd ${pwd}/*switchboard-plug-printers-git && makepkg -sf --noconfirm
cd ${pwd}/*switchboard-plug-security-privacy-git && makepkg -df --noconfirm
cd ${pwd}/*switchboard-plug-sharing-git && makepkg -sf --noconfirm
cd ${pwd}/*switchboard-plug-sound-git && makepkg -sf -d --noconfirm
cd ${pwd}/*switchboard-plug-user-accounts-git && makepkg -d --noconfirm
cd ${pwd}/*wingpanel && makepkg -d --noconfirm
cd ${pwd}/*wingpanel-git && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-a11y-git && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-bluetooth && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-bluetooth-git && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-datetime && makepkg -d --noconfirm
cd ${pwd}/*wingpanel-indicator-datetime-git && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-keyboard && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-keyboard-git && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-network && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-network-git && makepkg -d --noconfirm
cd ${pwd}/*wingpanel-indicator-nightlight && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-nightlight-git && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-notifications && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-notifications-git && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-power && makepkg -d --noconfirm
cd ${pwd}/*wingpanel-indicator-power-git && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-privacy-git && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-session && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-session-git && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-sound && makepkg -sf --noconfirm
cd ${pwd}/*wingpanel-indicator-sound-git && makepkg -sf --noconfirm
echo 'copy packages'
 cp -rv  ${pwd}/*cerbere/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*cerbere-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*contractor-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*elementary-icon-theme-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*elementary-wallpapers/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*elementary-wallpapers-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*gala/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*gala-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*granite-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*gsignond/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*gsignond-plugin-lastfm-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*gsignond-plugin-oauth-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*gsignond-plugin-sasl-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*gtk-theme-elementary/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*gtk-theme-elementary-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*libmutter2/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*lightdm-pantheon-greeter/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*lightdm-pantheon-greeter-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-applications-menu/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-applications-menu-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-calculator-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-calendar-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-camera-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-code-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-default-settings-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-dpms-helper-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-files-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-geoclue2-agent-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-mail/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-mail-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-music-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-photos/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-photos-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-polkit-agent-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-polkit-agent-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-screenshot-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-session-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-shortcut-overlay-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-terminal-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*pantheon-videos-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*slingshot-launcher/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*snap-photobooth/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*sound-theme-elementary-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-a11y/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-a11y-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-about-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-applications-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-bluetooth-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-datetime-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-desktop-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-display-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-keyboard-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-locale-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-mouse-touchpad-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-network-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-notifications-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-online-accounts/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-online-accounts-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-parental-controls-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-power-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-printers-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-security-privacy-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-sharing-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-sound-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*switchboard-plug-user-accounts-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-a11y-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-bluetooth/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-bluetooth-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-datetime/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-datetime-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-keyboard/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-keyboard-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-network/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-network-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-nightlight/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-nightlight-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-notifications/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-notifications-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-power/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-power-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-privacy-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-session/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-session-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-sound/*.pkg.tar.xz /srv/ftp/userftp/testing/
 cp -rv  ${pwd}/*wingpanel-indicator-sound-git/*.pkg.tar.xz /srv/ftp/userftp/testing/
rm -R ${pwd}/*/{src,pkg} -f
echo 'building pantheon desktop done'
