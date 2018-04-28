#!/bin/sh
dir=$PWD
for pkg in tqt3 tqtinterface arts dbus-tqt dbus-1-tqt tqca-tls libart-lgpl avahi-tqt tdelibs tdebase; do
  cd "$dir"/tde-"$pkg"
  makepkg -Lsci
done
