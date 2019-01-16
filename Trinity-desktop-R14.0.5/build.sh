#!/bin/sh

dir=$PWD
for pkg in tqt3 tqtinterface arts dbus-tqt dbus-1-tqt tqca-tls libart-lgpl avahi-tqt tdelibs tdebase dbus-1-tqt dbus-tqt ksplash libart-lgpl libcaldav libcarddav libkdcraw libkexiv2 lipstick qtcurve tdeaccessibility tdeaddons tdeadmin tdeartwork tdebindings tdeedu tdegames tdegraphics tdemultimedia tdenetwork tdepim tdesdk tdetoys tdeutils tdevelop tdewebdev tqca-tls  ; do
  cd "$dir"/tde-"$pkg"
  makepkg -Lsci
done

pwd=`pwd`
rm -Rf "$dir"/tde-"$pkg"/{src,pkg}
