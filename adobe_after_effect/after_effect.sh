#!/bin/bash  
  WINEARCH=win32 WINEPREFIX=~/.after_effect_cs4 wineboot
  mkdir $HOME/.cache/winetricks/msxml3/
  wget -P $HOME/.cache/winetricks/msxml3/ http://repository.playonlinux.com/divers/msxml3.msi  
  WINEPREFIX=$HOME/.after_effect_cs4/ wine msiexec /i $HOME/.cache/winetricks/msxml3/msxml3.msi 
  regsvr32 msxml3.dll
  WINEPREFIX=$HOME/.after_effect_cs4/ winetricks atmlib riched20 riched30 msxml6 gdiplus quicktime76 vcrun2005 vcrun2008 vcrun2010 xvid wmp9 vcrun6sp6
  WINEPREFIX=$HOME/.after_effect_cs4/ wineserver -w
  echo "-- Run setup #WINEPREFIX=$HOME/.after_effect_cs4/ winecfg and set Windows XP default system --"
  echo "-- Run setup #WINEPREFIX=$HOME/.after_effect_cs4/ wine setupadobe.exe --"
  echo "-- Befere install After Effects /home/USERNAME/.after_effect_cs4/drive_c/Program Files/Adobe/Adobe After Effects CS4/Support Files/Plug-ins/Format  --"
  echo "-- Rename CNImported.AEX file to -> CNImported.AEX.old  --"
  echo "-- Rename WMImport.AEX file to -> WMImport.AEX.old  --"
  echo "-- Install Adobe CS4 and enjoy --" 
  echo "-- Windows media player 10 not install and error import Windows Media Player --"
  echo "-- Plugin working complete --" 
