#!/bin/bash

gsShortVersion=923
gsVersion=9.23-linux-x86_64
gsVersionExtension=tgz
gsFilename=ghostscript-$gsVersion.$gsVersionExtension

if [[ ! -L "./gs" && ! -e "./gs" ]]; then
  wget https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs$gsShortVersion/$gsFilename
  tar zxf $gsFilename
  rm $gsFilename
  ln -s ghostscript-$gsVersion/gs-$gsShortVersion-linux-x86_64 gs
fi
