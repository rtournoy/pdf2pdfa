# Converting PDF Files to PDF/A with Ghostscript

![GPL](https://img.shields.io/github/license/rtournoy/pdf2pdfa)


## Requirements
- [Ghostscript](https://www.ghostscript.com/) Version 9.23 is OK, untested with other versions
- compatibleWithAdobeRGB1998.icc in [ICC Profiles Free](https://launchpad.net/ubuntu/+source/icc-profiles-free) used in PDFA_def.ps

## Setup

### 1/2 Download Ghostscript Requirement

    ./setUpGhostscript.sh 

### 2/2 Download ICC Profiles Free Requirement

    ./setUpIccProfiles.sh 

## Execute 

    ./pdf2pdfa.sh pdfFilename
 
### e.g.:


    ./pdf2pdfa.sh 2003.14327.pdf


### outputs:


     converted-2003.14327.pdf

## License
Licensed under the terms of the GPL Version 3. See LICENSE.