#!/bin/bash
convertedFileName=converted-$1
echo Input:  "$1"
echo Output: "$convertedFileName"
./gs -dPDFA=1 -dBATCH -dNOPAUSE -sColorConversionStrategy=UseDeviceIndependentColor -sProcessColorModel=DeviceRGB -sDEVICE=pdfwrite -sPDFACompatibilityPolicy=2 -sOutputFile="$convertedFileName" PDFA_def.ps "$1"
