#!/bin/bash

iccRGBProfileFileName=compatibleWithAdobeRGB1998.icc
iccProfileVersion=icc-profiles-free_2.0.1+dfsg
iccProfileFileNamePackage=$iccProfileVersion.orig.tar.bz2

if [[ ! -L $iccRGBProfileFileName && ! -e $iccRGBProfileFileName ]]; then
  wget https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/icc-profiles-free/2.0.1+dfsg-1.1/$iccProfileFileNamePackage
  mkdir iccProfiles
  tar xjf $iccProfileFileNamePackage -C iccProfiles --strip-components 1
  rm $iccProfileFileNamePackage
  ln -s iccProfiles/$iccRGBProfileFileName .
fi

