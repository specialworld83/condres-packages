#!/bin/bash  
  WINEPREFIX=$HOME/.wine/ winetricks vcrun2015
  WINEPREFIX=$HOME/.wine/ winetricks directx9
  wget https://github.com/doitsujin/dxvk/releases/download/v0.96/dxvk-0.96.tar.gz -O $HOME/.wine/dxvk-0.96.tar.gz
  $HOME/.wine/ tar xvzf dxvk-0.96.tar.gz
  $HOME/.wine/ cd dxvk-0.96
  $HOME/.wine/ winetricks --force setup_dxvk.verb
  cd ..
  echo "-- run winecfg and change version to windowsxp to windows7 --"
  echo "-- add opencl.dll and msvcr120.dll to library --"
  WINEPREFIX=$HOME/.wine/ wineserver -w
  echo "-- Install filmora and enjoy --" 
