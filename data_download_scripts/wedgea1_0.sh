#!/bin/bash
#
# Requires bash version >= 4
# 
# The script uses the command line tool 'curl' for querying
# the MAST Download service for public and protected data. 
#

type -P curl >&/dev/null || { echo "This script requires curl. Exiting." >&2; exit 1; }



# Check for existing Download Folder
# prompt user for overwrite, if found
let EXTENSION=0
FOLDER=wedgea1_0
DOWNLOAD_FOLDER=$FOLDER
if [ -d $DOWNLOAD_FOLDER ]
then
  echo -n "Download folder ${DOWNLOAD_FOLDER} found, (C)ontinue writing to existing folder or use (N)ew folder? [N]> "
  read -n1 ans
  if [ "$ans" = "c" -o "$ans" = "C" ]
  then
    echo ""
    echo "Downloading to existing folder: ${DOWNLOAD_FOLDER}"
    CONT="-C -"
  else
    while [ -d $DOWNLOAD_FOLDER ]
    do
      ((EXTENSION++))
      DOWNLOAD_FOLDER="${FOLDER}-${EXTENSION}"
    done

    echo ""
    echo "Downloading to new folder: ${DOWNLOAD_FOLDER}"
  fi
fi

# mkdir if it doesn't exist and download files there. 
mkdir -p ${DOWNLOAD_FOLDER}

# Download Product Files:

cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik52040/o5ik52040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik52040/o5ik52040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik52050/o5ik52050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik52050/o5ik52050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik52060/o5ik52060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik52060/o5ik52060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik52070/o5ik52070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik52070/o5ik52070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik52080/o5ik52080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik52080/o5ik52080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik52090/o5ik52090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik52090/o5ik52090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520a0/o5ik520a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520a0/o5ik520a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520b0/o5ik520b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520b0/o5ik520b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520c0/o5ik520c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520c0/o5ik520c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520d0/o5ik520d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520d0/o5ik520d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520e0/o5ik520e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520e0/o5ik520e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520f0/o5ik520f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520f0/o5ik520f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520g0/o5ik520g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520g0/o5ik520g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520h0/o5ik520h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520h0/o5ik520h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520i0/o5ik520i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520i0/o5ik520i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520j0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520j0/o5ik520j0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520j0/o5ik520j0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520j0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520k0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520k0/o5ik520k0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520k0/o5ik520k0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520k0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq01010/o5kq01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq01010/o5kq01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq01020/o5kq01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq01020/o5kq01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq02010/o5kq02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq02010/o5kq02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq02020/o5kq02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq02020/o5kq02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq03010/o5kq03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq03010/o5kq03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq03020/o5kq03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq03020/o5kq03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq04010/o5kq04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq04010/o5kq04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq04020/o5kq04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq04020/o5kq04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq05010/o5kq05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq05010/o5kq05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq06010/o5kq06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq06010/o5kq06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq07010/o5kq07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq07010/o5kq07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq07020/o5kq07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq07020/o5kq07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq08010/o5kq08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq08010/o5kq08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq09010/o5kq09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq09010/o5kq09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq09020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq09020/o5kq09020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq09020/o5kq09020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq09020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq11010/o5kq11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq11010/o5kq11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq11020/o5kq11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq11020/o5kq11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq12010/o5kq12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq12010/o5kq12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq12020/o5kq12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq12020/o5kq12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq13010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq13010/o5kq13010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq13010/o5kq13010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq13010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq14010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq14010/o5kq14010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq14010/o5kq14010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq14010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq15010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq15010/o5kq15010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq15010/o5kq15010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq15010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq15020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq15020/o5kq15020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq15020/o5kq15020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq15020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq16010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq16010/o5kq16010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq16010/o5kq16010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq16010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq16020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq16020/o5kq16020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq16020/o5kq16020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq16020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq17010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq17010/o5kq17010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq17010/o5kq17010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq17010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq18010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5kq18010/o5kq18010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5kq18010/o5kq18010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq18010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w01010/o64w01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w01010/o64w01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w01020/o64w01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w01020/o64w01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w01030/o64w01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w01030/o64w01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w01040/o64w01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w01040/o64w01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w01050/o64w01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w01050/o64w01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w01rjq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w01rjq/o64w01rjq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w01rjq/o64w01rjq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w01rjq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w02010/o64w02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w02010/o64w02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w02020/o64w02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w02020/o64w02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w02030/o64w02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w02030/o64w02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w02040/o64w02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w02040/o64w02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w02050/o64w02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w02050/o64w02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w02060/o64w02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w02060/o64w02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w02070/o64w02070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w02070/o64w02070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w02080/o64w02080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w02080/o64w02080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w02090/o64w02090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w02090/o64w02090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02ttq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w02ttq/o64w02ttq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w02ttq/o64w02ttq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02ttq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w03010/o64w03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w03010/o64w03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w03020/o64w03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w03020/o64w03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w03030/o64w03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w03030/o64w03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w03040/o64w03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w03040/o64w03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w03050/o64w03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w03050/o64w03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w03060/o64w03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w03060/o64w03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w03070/o64w03070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w03070/o64w03070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w03080/o64w03080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w03080/o64w03080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w03090/o64w03090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w03090/o64w03090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w030a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w030a0/o64w030a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w030a0/o64w030a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w030a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w030b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w030b0/o64w030b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w030b0/o64w030b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w030b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w030c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w030c0/o64w030c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w030c0/o64w030c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w030c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w04010/o64w04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w04010/o64w04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w04020/o64w04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w04020/o64w04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w05010/o64w05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w05010/o64w05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w05020/o64w05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w05020/o64w05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w05030/o64w05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w05030/o64w05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w05040/o64w05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w05040/o64w05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w06010/o64w06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w06010/o64w06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w06020/o64w06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w06020/o64w06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w07010/o64w07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w07010/o64w07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w11010/o64w11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w11010/o64w11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w11020/o64w11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w11020/o64w11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w11030/o64w11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w11030/o64w11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w11040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w11040/o64w11040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w11040/o64w11040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w11040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w12010/o64w12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w12010/o64w12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w12020/o64w12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w12020/o64w12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w12030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w12030/o64w12030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w12030/o64w12030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w12030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w12040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64w12040/o64w12040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64w12040/o64w12040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w12040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa1010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64wa1010/o64wa1010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64wa1010/o64wa1010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa1010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa1020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64wa1020/o64wa1020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64wa1020/o64wa1020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa1020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa1030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64wa1030/o64wa1030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64wa1030/o64wa1030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa1030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa1040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64wa1040/o64wa1040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64wa1040/o64wa1040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa1040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa2010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64wa2010/o64wa2010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64wa2010/o64wa2010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa2010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa2020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64wa2020/o64wa2020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64wa2020/o64wa2020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa2020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa2030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64wa2030/o64wa2030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64wa2030/o64wa2030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa2030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa2040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o64wa2040/o64wa2040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o64wa2040/o64wa2040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa2040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65410010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o65410010/o65410010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o65410010/o65410010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o65410010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65410020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o65410020/o65410020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o65410020/o65410020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o65410020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65420010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o65420010/o65420010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o65420010/o65420010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o65420010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y0010w0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y0010w0/o3y0010w0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y0010w0/o3y0010w0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o3y0010w0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y0010y0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y0010y0/o3y0010y0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y0010y0/o3y0010y0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o3y0010y0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y0020w0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y0020w0/o3y0020w0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y0020w0/o3y0020w0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o3y0020w0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y0020y0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y0020y0/o3y0020y0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y0020y0/o3y0020y0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o3y0020y0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o40601040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o40601040/o40601040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o40601040/o40601040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o40601040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v01020/o42v01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v01020/o42v01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o42v01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v01030/o42v01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v01030/o42v01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o42v01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v02020/o42v02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v02020/o42v02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o42v02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v02030/o42v02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v02030/o42v02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o42v02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v03020/o42v03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v03020/o42v03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o42v03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v03030/o42v03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v03030/o42v03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o42v03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o43f01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o43f01040/o43f01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o43f01040/o43f01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o43f01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn01010/o4xn01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn01010/o4xn01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn01020/o4xn01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn01020/o4xn01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn01030/o4xn01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn01030/o4xn01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn01040/o4xn01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn01040/o4xn01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn01050/o4xn01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn01050/o4xn01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn01060/o4xn01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn01060/o4xn01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn02010/o4xn02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn02010/o4xn02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn02020/o4xn02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn02020/o4xn02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn02030/o4xn02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn02030/o4xn02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn02040/o4xn02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn02040/o4xn02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn02050/o4xn02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn02050/o4xn02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn02060/o4xn02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn02060/o4xn02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn03010/o4xn03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn03010/o4xn03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn03020/o4xn03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn03020/o4xn03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn03030/o4xn03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn03030/o4xn03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn03040/o4xn03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn03040/o4xn03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn03050/o4xn03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn03050/o4xn03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4xn03060/o4xn03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4xn03060/o4xn03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o57z01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o57z01010/o57z01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o57z01010/o57z01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o57z01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o57z01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o57z01020/o57z01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o57z01020/o57z01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o57z01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o57z01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o57z01030/o57z01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o57z01030/o57z01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o57z01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o57z02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o57z02010/o57z02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o57z02010/o57z02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o57z02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o57z02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o57z02020/o57z02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o57z02020/o57z02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o57z02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o57z02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o57z02030/o57z02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o57z02030/o57z02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o57z02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik01010/o5ik01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik01010/o5ik01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik01020/o5ik01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik01020/o5ik01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik01030/o5ik01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik01030/o5ik01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik01040/o5ik01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik01040/o5ik01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik01050/o5ik01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik01050/o5ik01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik01060/o5ik01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik01060/o5ik01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik01070/o5ik01070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik01070/o5ik01070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik01080/o5ik01080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik01080/o5ik01080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik01090/o5ik01090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik01090/o5ik01090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik010a0/o5ik010a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik010a0/o5ik010a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik010b0/o5ik010b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik010b0/o5ik010b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik010c0/o5ik010c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik010c0/o5ik010c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik010d0/o5ik010d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik010d0/o5ik010d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik010e0/o5ik010e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik010e0/o5ik010e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik010f0/o5ik010f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik010f0/o5ik010f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik010g0/o5ik010g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik010g0/o5ik010g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik010h0/o5ik010h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik010h0/o5ik010h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik010i0/o5ik010i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik010i0/o5ik010i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010j0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik010j0/o5ik010j0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik010j0/o5ik010j0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010j0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010k0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik010k0/o5ik010k0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik010k0/o5ik010k0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010k0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010l0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik010l0/o5ik010l0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik010l0/o5ik010l0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010l0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik02010/o5ik02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik02010/o5ik02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik02020/o5ik02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik02020/o5ik02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik02030/o5ik02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik02030/o5ik02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik02040/o5ik02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik02040/o5ik02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik02050/o5ik02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik02050/o5ik02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik02060/o5ik02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik02060/o5ik02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik02070/o5ik02070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik02070/o5ik02070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik02080/o5ik02080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik02080/o5ik02080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik02090/o5ik02090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik02090/o5ik02090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020a0/o5ik020a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020a0/o5ik020a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020b0/o5ik020b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020b0/o5ik020b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020c0/o5ik020c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020c0/o5ik020c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020d0/o5ik020d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020d0/o5ik020d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020e0/o5ik020e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020e0/o5ik020e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020f0/o5ik020f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020f0/o5ik020f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020g0/o5ik020g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020g0/o5ik020g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020h0/o5ik020h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020h0/o5ik020h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020i0/o5ik020i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020i0/o5ik020i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020j0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020j0/o5ik020j0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020j0/o5ik020j0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020j0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020k0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020k0/o5ik020k0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020k0/o5ik020k0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020k0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik06010/o5ik06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik06010/o5ik06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik06020/o5ik06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik06020/o5ik06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik06030/o5ik06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik06030/o5ik06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik06040/o5ik06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik06040/o5ik06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik06050/o5ik06050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik06050/o5ik06050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik06060/o5ik06060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik06060/o5ik06060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik06070/o5ik06070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik06070/o5ik06070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik06080/o5ik06080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik06080/o5ik06080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik06090/o5ik06090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik06090/o5ik06090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik060a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik060a0/o5ik060a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik060a0/o5ik060a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik060a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik060b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik060b0/o5ik060b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik060b0/o5ik060b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik060b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik060c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik060c0/o5ik060c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik060c0/o5ik060c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik060c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik060d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik060d0/o5ik060d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik060d0/o5ik060d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik060d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik07010/o5ik07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik07010/o5ik07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik07020/o5ik07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik07020/o5ik07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik07030/o5ik07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik07030/o5ik07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik07040/o5ik07040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik07040/o5ik07040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik07050/o5ik07050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik07050/o5ik07050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik07060/o5ik07060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik07060/o5ik07060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik07070/o5ik07070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik07070/o5ik07070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik52010/o5ik52010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik52010/o5ik52010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik52020/o5ik52020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik52020/o5ik52020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik52030/o5ik52030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik52030/o5ik52030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq07060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq07060/odrq07060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq07060/odrq07060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq07060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq07070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq07070/odrq07070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq07070/odrq07070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq07070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq07080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq07080/odrq07080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq07080/odrq07080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq07080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq08040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq08040/odrq08040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq08040/odrq08040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq08040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq08050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq08050/odrq08050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq08050/odrq08050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq08050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odte01010/odte01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odte01010/odte01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odte02010/odte02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odte02010/odte02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odte03010/odte03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odte03010/odte03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odte03020/odte03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odte03020/odte03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odte04010/odte04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odte04010/odte04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odte05010/odte05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odte05010/odte05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odte11010/odte11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odte11010/odte11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odte12010/odte12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odte12010/odte12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte13010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odte13010/odte13010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odte13010/odte13010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte13010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte13020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odte13020/odte13020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odte13020/odte13020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte13020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte14010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odte14010/odte14010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odte14010/odte14010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte14010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte15010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odte15010/odte15010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odte15010/odte15010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte15010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c01020/oe3c01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c01020/oe3c01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c02020/oe3c02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c02020/oe3c02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c03020/oe3c03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c03020/oe3c03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c03030/oe3c03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c03030/oe3c03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c04020/oe3c04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c04020/oe3c04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c05020/oe3c05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c05020/oe3c05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c06020/oe3c06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c06020/oe3c06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c07020/oe3c07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c07020/oe3c07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c07030/oe3c07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c07030/oe3c07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3m01030/oe3m01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3m01030/oe3m01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3m01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3m02030/oe3m02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3m02030/oe3m02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3m02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3m03030/oe3m03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3m03030/oe3m03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3m03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3m04030/oe3m04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3m04030/oe3m04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3m04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebg01030/oebg01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebg01030/oebg01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebg01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebg02030/oebg02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebg02030/oebg02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebg02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebg03030/oebg03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebg03030/oebg03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebg03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebg04030/oebg04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebg04030/oebg04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebg04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx01020/oebx01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx01020/oebx01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx01030/oebx01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx01030/oebx01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx01040/oebx01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx01040/oebx01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx02030/oebx02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx02030/oebx02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx02040/oebx02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx02040/oebx02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx02050/oebx02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx02050/oebx02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx03030/oebx03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx03030/oebx03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx03040/oebx03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx03040/oebx03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx03050/oebx03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx03050/oebx03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz11020/oebz11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz11020/oebz11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz12020/oebz12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz12020/oebz12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz13020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz13020/oebz13020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz13020/oebz13020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz13020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz14020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz14020/oebz14020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz14020/oebz14020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz14020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz21020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz21020/oebz21020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz21020/oebz21020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz21020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz22020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz22020/oebz22020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz22020/oebz22020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz22020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz23020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz23020/oebz23020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz23020/oebz23020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz23020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz24020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz24020/oebz24020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz24020/oebz24020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz24020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz31020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz31020/oebz31020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz31020/oebz31020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz31020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz32020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz32020/oebz32020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz32020/oebz32020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz32020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz33020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz33020/oebz33020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz33020/oebz33020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz33020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz34020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz34020/oebz34020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz34020/oebz34020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz34020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz41020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz41020/oebz41020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz41020/oebz41020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz41020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz42020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz42020/oebz42020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz42020/oebz42020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz42020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz43020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz43020/oebz43020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz43020/oebz43020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz43020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz44020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz44020/oebz44020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz44020/oebz44020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz44020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz52020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz52020/oebz52020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz52020/oebz52020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz52020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz53020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebz53020/oebz53020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebz53020/oebz53020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz53020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec201020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oec201020/oec201020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oec201020/oec201020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec201020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec202020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oec202020/oec202020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oec202020/oec202020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec202020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec203040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oec203040/oec203040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oec203040/oec203040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec203040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec203050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oec203050/oec203050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oec203050/oec203050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec203050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec203060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oec203060/oec203060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oec203060/oec203060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec203060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec204020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oec204020/oec204020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oec204020/oec204020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec204020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec253040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oec253040/oec253040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oec253040/oec253040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec253040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec253050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oec253050/oec253050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oec253050/oec253050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec253050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec253060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oec253060/oec253060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oec253060/oec253060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec253060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec254020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oec254020/oec254020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oec254020/oec254020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec254020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oenf01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oenf01030/oenf01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oenf01030/oenf01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oenf01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oenf02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oenf02030/oenf02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oenf02030/oenf02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oenf02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oenf03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oenf03030/oenf03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oenf03030/oenf03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oenf03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh31030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh31030/occh31030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh31030/occh31030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh31030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh32030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh32030/occh32030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh32030/occh32030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh32030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh40030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh40030/occh40030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh40030/occh40030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh40030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh41030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh41030/occh41030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh41030/occh41030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh41030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh42030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh42030/occh42030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh42030/occh42030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh42030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc01040/ocjc01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc01040/ocjc01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc02040/ocjc02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc02040/ocjc02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc03040/ocjc03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc03040/ocjc03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc04040/ocjc04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc04040/ocjc04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc05040/ocjc05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc05040/ocjc05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc06040/ocjc06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc06040/ocjc06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc07040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc07040/ocjc07040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc07040/ocjc07040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc07040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc08040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc08040/ocjc08040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc08040/ocjc08040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc08040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc11040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc11040/ocjc11040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc11040/ocjc11040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc11040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc11050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc11050/ocjc11050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc11050/ocjc11050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc11050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc12040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc12040/ocjc12040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc12040/ocjc12040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc12040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc12050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc12050/ocjc12050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc12050/ocjc12050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc12050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc13040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc13040/ocjc13040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc13040/ocjc13040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc13040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc13050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc13050/ocjc13050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc13050/ocjc13050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc13050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc14040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc14040/ocjc14040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc14040/ocjc14040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc14040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc14050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc14050/ocjc14050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc14050/ocjc14050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc14050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc15040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc15040/ocjc15040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc15040/ocjc15040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc15040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc15050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc15050/ocjc15050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc15050/ocjc15050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc15050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc16040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc16040/ocjc16040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc16040/ocjc16040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc16040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc16050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc16050/ocjc16050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc16050/ocjc16050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc16050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc17040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc17040/ocjc17040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc17040/ocjc17040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc17040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc17050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc17050/ocjc17050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc17050/ocjc17050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc17050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc18040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc18040/ocjc18040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc18040/ocjc18040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc18040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc18050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc18050/ocjc18050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc18050/ocjc18050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc18050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc31040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc31040/ocjc31040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc31040/ocjc31040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc31040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc32040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc32040/ocjc32040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc32040/ocjc32040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc32040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc33040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc33040/ocjc33040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc33040/ocjc33040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc33040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc34040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc34040/ocjc34040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc34040/ocjc34040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc34040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc35040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc35040/ocjc35040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc35040/ocjc35040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc35040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc36040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc36040/ocjc36040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc36040/ocjc36040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc36040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc37040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc37040/ocjc37040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc37040/ocjc37040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc37040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc38040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc38040/ocjc38040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc38040/ocjc38040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc38040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc41040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc41040/ocjc41040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc41040/ocjc41040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc41040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc41050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc41050/ocjc41050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc41050/ocjc41050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc41050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc42040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc42040/ocjc42040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc42040/ocjc42040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc42040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc42050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc42050/ocjc42050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc42050/ocjc42050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc42050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc43040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc43040/ocjc43040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc43040/ocjc43040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc43040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc43050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc43050/ocjc43050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc43050/ocjc43050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc43050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc44040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc44040/ocjc44040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc44040/ocjc44040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc44040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc44050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc44050/ocjc44050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc44050/ocjc44050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc44050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc45040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc45040/ocjc45040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc45040/ocjc45040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc45040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc45050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc45050/ocjc45050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc45050/ocjc45050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc45050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc46040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc46040/ocjc46040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc46040/ocjc46040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc46040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc46050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc46050/ocjc46050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc46050/ocjc46050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc46050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc47040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc47040/ocjc47040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc47040/ocjc47040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc47040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc47050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc47050/ocjc47050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc47050/ocjc47050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc47050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc48040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc48040/ocjc48040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc48040/ocjc48040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc48040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc48050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc48050/ocjc48050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc48050/ocjc48050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc48050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc51020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc51020/ocjc51020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc51020/ocjc51020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc51020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc52020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc52020/ocjc52020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc52020/ocjc52020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc52020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc53030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc53030/ocjc53030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc53030/ocjc53030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc53030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc53040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc53040/ocjc53040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc53040/ocjc53040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc53040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc54020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc54020/ocjc54020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc54020/ocjc54020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc54020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc55020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc55020/ocjc55020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc55020/ocjc55020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc55020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc56020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc56020/ocjc56020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc56020/ocjc56020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc56020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc57030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc57030/ocjc57030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc57030/ocjc57030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc57030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc58020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc58020/ocjc58020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc58020/ocjc58020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc58020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco301010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco301010/oco301010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco301010/oco301010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco301010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco302010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco302010/oco302010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco302010/oco302010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco302010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco303010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco303010/oco303010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco303010/oco303010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco303010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco304010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco304010/oco304010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco304010/oco304010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco304010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco601040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco601040/oco601040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco601040/oco601040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco601040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco602040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco602040/oco602040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco602040/oco602040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco602040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco603040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco603040/oco603040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco603040/oco603040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco603040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco603050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco603050/oco603050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco603050/oco603050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco603050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco603060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco603060/oco603060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco603060/oco603060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco603060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco604040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco604040/oco604040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco604040/oco604040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco604040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco605040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco605040/oco605040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco605040/oco605040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco605040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco606040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco606040/oco606040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco606040/oco606040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco606040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco607040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco607040/oco607040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco607040/oco607040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco607040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco607050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco607050/oco607050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco607050/oco607050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco607050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco607060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco607060/oco607060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco607060/oco607060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco607060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco608040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco608040/oco608040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco608040/oco608040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco608040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5401010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od5401010/od5401010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od5401010/od5401010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5401010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5402010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od5402010/od5402010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od5402010/od5402010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5402010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5403010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od5403010/od5403010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od5403010/od5403010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5403010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5403020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od5403020/od5403020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od5403020/od5403020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5403020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5404010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od5404010/od5404010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od5404010/od5404010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5404010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5405010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od5405010/od5405010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od5405010/od5405010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5405010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5411010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od5411010/od5411010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od5411010/od5411010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5411010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5412010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od5412010/od5412010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od5412010/od5412010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5412010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5413010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od5413010/od5413010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od5413010/od5413010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5413010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5413020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od5413020/od5413020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od5413020/od5413020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5413020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5414010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od5414010/od5414010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od5414010/od5414010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5414010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5415010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od5415010/od5415010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od5415010/od5415010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5415010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh401010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odh401010/odh401010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odh401010/odh401010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh401010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh402010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odh402010/odh402010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odh402010/odh402010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh402010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh403010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odh403010/odh403010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odh403010/odh403010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh403010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh403020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odh403020/odh403020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odh403020/odh403020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh403020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh404010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odh404010/odh404010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odh404010/odh404010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh404010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh405010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odh405010/odh405010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odh405010/odh405010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh405010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh411010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odh411010/odh411010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odh411010/odh411010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh411010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh412010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odh412010/odh412010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odh412010/odh412010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh412010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh413010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odh413010/odh413010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odh413010/odh413010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh413010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh413020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odh413020/odh413020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odh413020/odh413020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh413020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65420020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o65420020/o65420020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o65420020/o65420020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o65420020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o68m030g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o68m030g0/o68m030g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o68m030g0/o68m030g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o68m030g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o68m030i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o68m030i0/o68m030i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o68m030i0/o68m030i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o68m030i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o68m030k0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o68m030k0/o68m030k0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o68m030k0/o68m030k0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o68m030k0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o68m030m0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o68m030m0/o68m030m0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o68m030m0/o68m030m0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o68m030m0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o69c03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o69c03010/o69c03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o69c03010/o69c03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o69c03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o69c03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o69c03030/o69c03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o69c03030/o69c03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o69c03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o69c03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o69c03050/o69c03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o69c03050/o69c03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o69c03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bt01010/o6bt01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bt01010/o6bt01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bt01020/o6bt01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bt01020/o6bt01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bt02010/o6bt02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bt02010/o6bt02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bt02020/o6bt02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bt02020/o6bt02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bt02030/o6bt02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bt02030/o6bt02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bt03010/o6bt03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bt03010/o6bt03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bt03020/o6bt03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bt03020/o6bt03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx10010/o6bx10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx10010/o6bx10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx20010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx20010/o6bx20010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx20010/o6bx20010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx20010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx22010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx22010/o6bx22010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx22010/o6bx22010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx22010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx23010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx23010/o6bx23010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx23010/o6bx23010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx23010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx24010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx24010/o6bx24010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx24010/o6bx24010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx24010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx25010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx25010/o6bx25010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx25010/o6bx25010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx25010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx26010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx26010/o6bx26010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx26010/o6bx26010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx26010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx27010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx27010/o6bx27010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx27010/o6bx27010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx27010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx28010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx28010/o6bx28010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx28010/o6bx28010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx28010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx29010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx29010/o6bx29010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx29010/o6bx29010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx29010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx30010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx30010/o6bx30010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx30010/o6bx30010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx30010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx31010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx31010/o6bx31010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx31010/o6bx31010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx31010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx32010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx32010/o6bx32010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx32010/o6bx32010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx32010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx33010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx33010/o6bx33010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx33010/o6bx33010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx33010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx34010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx34010/o6bx34010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx34010/o6bx34010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx34010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx35010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx35010/o6bx35010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx35010/o6bx35010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx35010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx36010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx36010/o6bx36010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx36010/o6bx36010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx36010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx37010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx37010/o6bx37010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx37010/o6bx37010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx37010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx38010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx38010/o6bx38010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx38010/o6bx38010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx38010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx39010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx39010/o6bx39010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx39010/o6bx39010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx39010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx40010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx40010/o6bx40010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx40010/o6bx40010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx40010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx41010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx41010/o6bx41010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx41010/o6bx41010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx41010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx42010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx42010/o6bx42010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx42010/o6bx42010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx42010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx42020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx42020/o6bx42020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx42020/o6bx42020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx42020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx42030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx42030/o6bx42030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx42030/o6bx42030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx42030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx42040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx42040/o6bx42040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx42040/o6bx42040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx42040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx42050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx42050/o6bx42050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx42050/o6bx42050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx42050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx42060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx42060/o6bx42060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx42060/o6bx42060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx42060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx43010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx43010/o6bx43010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx43010/o6bx43010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx43010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx43020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx43020/o6bx43020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx43020/o6bx43020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx43020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx43030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx43030/o6bx43030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx43030/o6bx43030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx43030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx43040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx43040/o6bx43040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx43040/o6bx43040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx43040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx43050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx43050/o6bx43050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx43050/o6bx43050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx43050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx44010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx44010/o6bx44010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx44010/o6bx44010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx44010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx44020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx44020/o6bx44020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx44020/o6bx44020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx44020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx44030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx44030/o6bx44030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx44030/o6bx44030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx44030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx44040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx44040/o6bx44040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx44040/o6bx44040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx44040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx44050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx44050/o6bx44050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx44050/o6bx44050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx44050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx44060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx44060/o6bx44060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx44060/o6bx44060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx44060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx45010/o6bx45010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx45010/o6bx45010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx45020/o6bx45020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx45020/o6bx45020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx45030/o6bx45030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx45030/o6bx45030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx45040/o6bx45040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx45040/o6bx45040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx45050/o6bx45050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx45050/o6bx45050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx45060/o6bx45060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx45060/o6bx45060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx45070/o6bx45070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx45070/o6bx45070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx46010/o6bx46010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx46010/o6bx46010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx46020/o6bx46020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx46020/o6bx46020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx46030/o6bx46030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx46030/o6bx46030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx46040/o6bx46040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx46040/o6bx46040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx46050/o6bx46050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx46050/o6bx46050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx46060/o6bx46060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx46060/o6bx46060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx46070/o6bx46070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx46070/o6bx46070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx47010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx47010/o6bx47010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx47010/o6bx47010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx47010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx47020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx47020/o6bx47020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx47020/o6bx47020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx47020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx47030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx47030/o6bx47030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx47030/o6bx47030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx47030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx47040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx47040/o6bx47040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx47040/o6bx47040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx47040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx47050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx47050/o6bx47050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx47050/o6bx47050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx47050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx47060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6bx47060/o6bx47060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6bx47060/o6bx47060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx47060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i401040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6i401040/o6i401040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6i401040/o6i401040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6i401040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i401050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6i401050/o6i401050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6i401050/o6i401050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6i401050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i401060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6i401060/o6i401060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6i401060/o6i401060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6i401060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i402010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6i402010/o6i402010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6i402010/o6i402010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6i402010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i402020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6i402020/o6i402020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6i402020/o6i402020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6i402020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6lx02040/o6lx02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6lx02040/o6lx02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6lx02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6lx02050/o6lx02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6lx02050/o6lx02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6lx02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx02z5q_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6lx02z5q/o6lx02z5q_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6lx02z5q/o6lx02z5q_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6lx02z5q_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6lx03040/o6lx03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6lx03040/o6lx03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6lx03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6lx03050/o6lx03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6lx03050/o6lx03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6lx03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx03peq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6lx03peq/o6lx03peq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6lx03peq/o6lx03peq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6lx03peq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r511010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r511010/o9r511010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r511010/o9r511010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r511010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r511020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r511020/o9r511020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r511020/o9r511020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r511020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r512010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r512010/o9r512010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r512010/o9r512010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r512010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r512020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r512020/o9r512020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r512020/o9r512020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r512020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r513010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r513010/o9r513010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r513010/o9r513010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r513010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r513020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r513020/o9r513020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r513020/o9r513020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r513020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r521010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r521010/o9r521010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r521010/o9r521010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r521010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r521020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r521020/o9r521020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r521020/o9r521020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r521020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r522010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r522010/o9r522010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r522010/o9r522010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r522010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r522020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r522020/o9r522020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r522020/o9r522020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r522020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r523010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r523010/o9r523010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r523010/o9r523010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r523010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r523020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r523020/o9r523020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r523020/o9r523020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r523020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r531010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r531010/o9r531010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r531010/o9r531010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r531010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r531020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r531020/o9r531020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r531020/o9r531020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r531020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r532010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r532010/o9r532010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r532010/o9r532010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r532010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r532020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r532020/o9r532020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r532020/o9r532020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r532020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r533010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r533010/o9r533010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r533010/o9r533010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r533010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r533020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r533020/o9r533020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r533020/o9r533020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r533020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r561010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r561010/o9r561010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r561010/o9r561010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r561010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r561020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r561020/o9r561020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r561020/o9r561020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r561020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r562010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r562010/o9r562010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r562010/o9r562010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r562010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r562020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r562020/o9r562020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r562020/o9r562020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r562020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r563010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r563010/o9r563010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r563010/o9r563010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r563010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r563020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r563020/o9r563020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r563020/o9r563020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r563020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r571010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r571010/o9r571010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r571010/o9r571010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r571010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r571020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r571020/o9r571020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r571020/o9r571020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r571020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r573010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r573010/o9r573010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r573010/o9r573010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r573010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r573020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o9r573020/o9r573020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o9r573020/o9r573020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r573020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j09010/ob1j09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j09010/ob1j09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j09020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j09020/ob1j09020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j09020/ob1j09020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j09020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j09030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j09030/ob1j09030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j09030/ob1j09030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j09030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j10010/ob1j10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j10010/ob1j10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j10020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j10020/ob1j10020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j10020/ob1j10020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j10020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j10030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j10030/ob1j10030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j10030/ob1j10030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j10030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j11010/ob1j11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j11010/ob1j11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j11020/ob1j11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j11020/ob1j11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j11030/ob1j11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j11030/ob1j11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3601010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob3601010/ob3601010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob3601010/ob3601010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3601010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3601020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob3601020/ob3601020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob3601020/ob3601020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3601020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3602010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob3602010/ob3602010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob3602010/ob3602010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3602010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3602020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob3602020/ob3602020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob3602020/ob3602020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3602020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3603010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob3603010/ob3603010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob3603010/ob3603010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3603010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3603020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob3603020/ob3603020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob3603020/ob3603020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3603020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3604010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob3604010/ob3604010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob3604010/ob3604010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3604010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3604020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob3604020/ob3604020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob3604020/ob3604020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3604020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3605010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob3605010/ob3605010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob3605010/ob3605010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3605010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3605020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob3605020/ob3605020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob3605020/ob3605020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3605020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3606010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob3606010/ob3606010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob3606010/ob3606010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3606010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3606020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob3606020/ob3606020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob3606020/ob3606020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3606020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw01030/obiw01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw01030/obiw01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw02030/obiw02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw02030/obiw02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw03030/obiw03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw03030/obiw03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw04030/obiw04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw04030/obiw04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw05030/obiw05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw05030/obiw05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw06030/obiw06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw06030/obiw06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw07030/obiw07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw07030/obiw07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw08030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw08030/obiw08030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw08030/obiw08030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw08030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw11040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw11040/obiw11040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw11040/obiw11040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw11040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw12040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw12040/obiw12040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw12040/obiw12040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw12040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw13040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw13040/obiw13040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw13040/obiw13040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw13040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw14040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw14040/obiw14040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw14040/obiw14040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw14040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw15040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw15040/obiw15040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw15040/obiw15040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw15040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw16040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw16040/obiw16040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw16040/obiw16040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw16040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw17040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw17040/obiw17040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw17040/obiw17040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw17040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw18040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw18040/obiw18040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw18040/obiw18040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw18040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw21030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw21030/obiw21030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw21030/obiw21030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw21030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw22030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw22030/obiw22030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw22030/obiw22030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw22030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw23040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw23040/obiw23040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw23040/obiw23040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw23040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw24030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw24030/obiw24030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw24030/obiw24030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw24030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw25030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw25030/obiw25030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw25030/obiw25030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw25030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw26030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw26030/obiw26030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw26030/obiw26030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw26030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw27040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw27040/obiw27040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw27040/obiw27040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw27040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw28030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw28030/obiw28030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw28030/obiw28030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw28030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw31030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw31030/obiw31030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw31030/obiw31030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw31030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw32030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw32030/obiw32030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw32030/obiw32030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw32030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw33030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw33030/obiw33030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw33030/obiw33030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw33030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw34030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw34030/obiw34030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw34030/obiw34030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw34030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw35030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw35030/obiw35030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw35030/obiw35030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw35030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw36030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw36030/obiw36030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw36030/obiw36030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw36030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw37030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw37030/obiw37030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw37030/obiw37030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw37030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw38030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw38030/obiw38030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw38030/obiw38030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw38030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw41040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw41040/obiw41040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw41040/obiw41040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw41040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw42040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw42040/obiw42040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw42040/obiw42040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw42040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw43040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw43040/obiw43040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw43040/obiw43040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw43040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw44040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw44040/obiw44040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw44040/obiw44040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw44040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw45040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw45040/obiw45040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw45040/obiw45040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw45040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw46040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw46040/obiw46040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw46040/obiw46040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw46040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw47040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw47040/obiw47040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw47040/obiw47040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw47040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw48040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw48040/obiw48040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw48040/obiw48040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw48040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw51030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw51030/obiw51030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw51030/obiw51030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw51030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw52030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw52030/obiw52030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw52030/obiw52030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw52030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw53030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw53030/obiw53030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw53030/obiw53030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw53030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw54030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw54030/obiw54030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw54030/obiw54030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw54030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw55030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw55030/obiw55030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw55030/obiw55030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw55030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw56030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw56030/obiw56030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw56030/obiw56030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw56030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw57030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw57030/obiw57030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw57030/obiw57030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw57030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw58030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw58030/obiw58030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw58030/obiw58030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw58030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw61030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw61030/obiw61030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw61030/obiw61030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw61030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw62030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw62030/obiw62030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw62030/obiw62030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw62030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw63030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw63030/obiw63030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw63030/obiw63030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw63030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw64030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw64030/obiw64030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw64030/obiw64030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw64030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw65030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw65030/obiw65030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw65030/obiw65030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw65030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw66030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw66030/obiw66030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw66030/obiw66030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw66030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw67030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw67030/obiw67030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw67030/obiw67030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw67030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw68030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw68030/obiw68030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw68030/obiw68030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw68030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw71030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw71030/obiw71030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw71030/obiw71030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw71030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw72030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw72030/obiw72030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw72030/obiw72030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw72030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw73030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw73030/obiw73030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw73030/obiw73030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw73030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw74030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw74030/obiw74030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw74030/obiw74030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw74030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw75030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw75030/obiw75030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw75030/obiw75030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw75030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw76030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw76030/obiw76030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw76030/obiw76030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw76030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw77030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw77030/obiw77030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw77030/obiw77030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw77030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw78030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw78030/obiw78030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw78030/obiw78030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw78030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw81040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw81040/obiw81040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw81040/obiw81040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw81040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw82040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw82040/obiw82040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw82040/obiw82040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw82040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw83030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw83030/obiw83030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw83030/obiw83030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw83030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw83040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw83040/obiw83040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw83040/obiw83040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw83040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw83050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw83050/obiw83050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw83050/obiw83050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw83050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw84040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw84040/obiw84040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw84040/obiw84040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw84040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw85040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw85040/obiw85040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw85040/obiw85040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw85040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw86040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw86040/obiw86040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw86040/obiw86040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw86040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw87040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw87040/obiw87040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw87040/obiw87040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw87040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw88040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw88040/obiw88040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw88040/obiw88040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw88040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw91030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw91030/obiw91030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw91030/obiw91030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw91030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw91040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw91040/obiw91040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw91040/obiw91040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw91040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw92030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw92030/obiw92030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw92030/obiw92030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw92030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw92040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw92040/obiw92040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw92040/obiw92040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw92040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw93030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw93030/obiw93030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw93030/obiw93030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw93030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw93040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw93040/obiw93040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw93040/obiw93040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw93040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw94030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw94030/obiw94030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw94030/obiw94030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw94030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw94040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw94040/obiw94040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw94040/obiw94040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw94040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw95030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw95030/obiw95030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw95030/obiw95030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw95030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw95040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw95040/obiw95040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw95040/obiw95040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw95040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw96030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw96030/obiw96030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw96030/obiw96030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw96030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw96040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw96040/obiw96040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw96040/obiw96040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw96040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw97030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw97030/obiw97030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw97030/obiw97030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw97030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw97040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw97040/obiw97040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw97040/obiw97040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw97040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw98030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw98030/obiw98030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw98030/obiw98030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw98030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw98040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw98040/obiw98040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw98040/obiw98040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw98040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb5030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwb5030/obiwb5030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwb5030/obiwb5030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiwb5030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb6030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwb6030/obiwb6030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwb6030/obiwb6030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiwb6030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb7030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwb7030/obiwb7030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwb7030/obiwb7030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiwb7030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb8030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwb8030/obiwb8030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwb8030/obiwb8030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiwb8030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obkq09010/obkq09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obkq09010/obkq09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq09020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obkq09020/obkq09020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obkq09020/obkq09020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq09020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq09030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obkq09030/obkq09030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obkq09030/obkq09030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq09030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq09040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obkq09040/obkq09040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obkq09040/obkq09040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq09040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obkq10010/obkq10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obkq10010/obkq10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq10020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obkq10020/obkq10020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obkq10020/obkq10020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq10020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq10030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obkq10030/obkq10030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obkq10030/obkq10030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq10030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq10040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obkq10040/obkq10040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obkq10040/obkq10040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq10040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obkq11010/obkq11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obkq11010/obkq11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obkq11020/obkq11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obkq11020/obkq11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obkq11030/obkq11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obkq11030/obkq11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq11040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obkq11040/obkq11040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obkq11040/obkq11040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq11040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obkq12010/obkq12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obkq12010/obkq12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm01030/obqm01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm01030/obqm01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm01040/obqm01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm01040/obqm01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm01050/obqm01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm01050/obqm01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm02030/obqm02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm02030/obqm02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm02040/obqm02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm02040/obqm02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm02050/obqm02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm02050/obqm02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm03030/obqm03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm03030/obqm03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm03040/obqm03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm03040/obqm03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm03050/obqm03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm03050/obqm03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs701010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs701010/obs701010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs701010/obs701010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs701010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs702010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs702010/obs702010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs702010/obs702010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs702010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs703010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs703010/obs703010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs703010/obs703010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs703010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs703020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs703020/obs703020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs703020/obs703020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs703020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs704010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs704010/obs704010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs704010/obs704010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs704010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs704020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs704020/obs704020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs704020/obs704020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs704020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs705010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs705010/obs705010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs705010/obs705010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs705010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs706010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs706010/obs706010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs706010/obs706010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs706010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs709010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs709010/obs709010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs709010/obs709010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs709010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs709020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs709020/obs709020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs709020/obs709020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs709020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs710010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs710010/obs710010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs710010/obs710010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs710010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs710020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs710020/obs710020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs710020/obs710020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs710020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs713010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs713010/obs713010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs713010/obs713010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs713010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs714010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs714010/obs714010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs714010/obs714010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs714010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs715010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs715010/obs715010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs715010/obs715010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs715010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs715020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs715020/obs715020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs715020/obs715020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs715020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs716010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs716010/obs716010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs716010/obs716010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs716010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs716020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obs716020/obs716020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obs716020/obs716020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs716020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m01010/oc1m01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m01010/oc1m01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m02010/oc1m02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m02010/oc1m02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m03010/oc1m03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m03010/oc1m03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m03020/oc1m03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m03020/oc1m03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m04010/oc1m04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m04010/oc1m04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m04020/oc1m04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m04020/oc1m04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m05010/oc1m05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m05010/oc1m05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m06010/oc1m06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m06010/oc1m06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m07010/oc1m07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m07010/oc1m07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m07020/oc1m07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m07020/oc1m07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m08010/oc1m08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m08010/oc1m08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m08020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m08020/oc1m08020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m08020/oc1m08020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m08020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m09010/oc1m09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m09010/oc1m09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m10010/oc1m10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m10010/oc1m10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m11010/oc1m11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m11010/oc1m11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m11020/oc1m11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m11020/oc1m11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m12010/oc1m12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m12010/oc1m12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m12020/oc1m12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m12020/oc1m12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m13010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m13010/oc1m13010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m13010/oc1m13010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m13010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m13020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m13020/oc1m13020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m13020/oc1m13020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m13020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m14010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m14010/oc1m14010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m14010/oc1m14010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m14010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m14020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc1m14020/oc1m14020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc1m14020/oc1m14020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m14020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh01030/occh01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh01030/occh01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh02030/occh02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh02030/occh02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh03030/occh03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh03030/occh03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh10020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh10020/occh10020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh10020/occh10020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh10020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh11020/occh11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh11020/occh11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh12020/occh12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh12020/occh12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh20030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh20030/occh20030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh20030/occh20030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh20030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh21030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh21030/occh21030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh21030/occh21030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh21030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh22030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh22030/occh22030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh22030/occh22030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh22030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh30030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh30030/occh30030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh30030/occh30030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh30030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh414010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odh414010/odh414010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odh414010/odh414010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh414010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh415010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odh415010/odh415010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odh415010/odh415010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh415010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn11020/odkn11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn11020/odkn11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn12020/odkn12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn12020/odkn12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn13040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn13040/odkn13040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn13040/odkn13040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn13040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn14020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn14020/odkn14020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn14020/odkn14020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn14020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn21nyq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn21nyq/odkn21nyq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn21nyq/odkn21nyq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn21nyq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn22o5q_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn22o5q/odkn22o5q_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn22o5q/odkn22o5q_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn22o5q_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn23oaq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn23oaq/odkn23oaq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn23oaq/odkn23oaq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn23oaq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn24ofq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn24ofq/odkn24ofq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn24ofq/odkn24ofq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn24ofq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn25020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn25020/odkn25020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn25020/odkn25020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn25020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn26osq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn26osq/odkn26osq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn26osq/odkn26osq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn26osq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn27oxq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn27oxq/odkn27oxq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn27oxq/odkn27oxq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn27oxq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn31030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn31030/odkn31030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn31030/odkn31030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn31030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn32030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn32030/odkn32030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn32030/odkn32030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn32030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn33030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn33030/odkn33030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn33030/odkn33030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn33030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn34030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn34030/odkn34030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn34030/odkn34030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn34030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn41040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn41040/odkn41040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn41040/odkn41040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn41040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn42040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn42040/odkn42040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn42040/odkn42040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn42040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn43040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn43040/odkn43040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn43040/odkn43040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn43040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn44040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn44040/odkn44040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn44040/odkn44040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn44040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn45040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn45040/odkn45040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn45040/odkn45040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn45040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn46040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn46040/odkn46040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn46040/odkn46040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn46040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn51040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn51040/odkn51040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn51040/odkn51040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn51040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn51050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn51050/odkn51050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn51050/odkn51050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn51050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn52040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn52040/odkn52040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn52040/odkn52040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn52040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn52050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn52050/odkn52050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn52050/odkn52050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn52050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn53040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn53040/odkn53040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn53040/odkn53040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn53040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn53050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn53050/odkn53050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn53050/odkn53050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn53050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn54040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn54040/odkn54040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn54040/odkn54040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn54040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn54050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn54050/odkn54050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn54050/odkn54050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn54050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn61050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn61050/odkn61050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn61050/odkn61050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn61050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn61060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn61060/odkn61060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn61060/odkn61060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn61060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn62050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn62050/odkn62050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn62050/odkn62050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn62050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn62060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn62060/odkn62060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn62060/odkn62060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn62060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn63050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn63050/odkn63050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn63050/odkn63050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn63050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn63060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn63060/odkn63060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn63060/odkn63060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn63060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn64050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn64050/odkn64050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn64050/odkn64050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn64050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn64060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn64060/odkn64060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn64060/odkn64060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn64060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn65050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn65050/odkn65050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn65050/odkn65050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn65050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn65060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn65060/odkn65060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn65060/odkn65060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn65060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn66050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn66050/odkn66050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn66050/odkn66050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn66050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn66060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn66060/odkn66060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn66060/odkn66060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn66060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn81050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn81050/odkn81050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn81050/odkn81050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn81050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn81060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn81060/odkn81060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn81060/odkn81060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn81060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn81070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn81070/odkn81070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn81070/odkn81070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn81070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn81080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn81080/odkn81080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn81080/odkn81080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn81080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn82050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn82050/odkn82050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn82050/odkn82050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn82050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn82060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn82060/odkn82060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn82060/odkn82060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn82060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn82070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn82070/odkn82070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn82070/odkn82070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn82070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn82080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn82080/odkn82080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn82080/odkn82080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn82080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn83050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn83050/odkn83050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn83050/odkn83050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn83050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn83060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn83060/odkn83060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn83060/odkn83060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn83060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn83070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn83070/odkn83070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn83070/odkn83070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn83070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn83080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn83080/odkn83080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn83080/odkn83080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn83080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn84050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn84050/odkn84050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn84050/odkn84050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn84050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn84060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn84060/odkn84060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn84060/odkn84060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn84060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn84070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn84070/odkn84070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn84070/odkn84070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn84070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn84080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn84080/odkn84080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn84080/odkn84080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn84080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkp01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkp01020/odkp01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkp01020/odkp01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkp01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkp02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkp02020/odkp02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkp02020/odkp02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkp02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkp03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkp03040/odkp03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkp03040/odkp03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkp03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkp04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkp04020/odkp04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkp04020/odkp04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkp04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv01030/odlv01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv01030/odlv01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odlv01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv02030/odlv02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv02030/odlv02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odlv02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv03030/odlv03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv03030/odlv03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odlv03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv04030/odlv04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv04030/odlv04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odlv04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv05030/odlv05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv05030/odlv05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odlv05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv11030/odlv11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv11030/odlv11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odlv11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn301010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn301010/odn301010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn301010/odn301010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn301010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn302010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn302010/odn302010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn302010/odn302010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn302010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn303010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn303010/odn303010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn303010/odn303010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn303010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn304010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn304010/odn304010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn304010/odn304010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn304010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn304020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn304020/odn304020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn304020/odn304020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn304020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn304030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn304030/odn304030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn304030/odn304030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn304030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn305010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn305010/odn305010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn305010/odn305010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn305010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn305020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn305020/odn305020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn305020/odn305020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn305020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn305030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn305030/odn305030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn305030/odn305030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn305030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn306010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn306010/odn306010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn306010/odn306010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn306010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn306020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn306020/odn306020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn306020/odn306020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn306020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn306030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn306030/odn306030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn306030/odn306030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn306030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn307010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn307010/odn307010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn307010/odn307010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn307010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn308010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn308010/odn308010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn308010/odn308010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn308010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn308020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn308020/odn308020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn308020/odn308020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn308020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn308030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odn308030/odn308030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odn308030/odn308030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn308030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq01040/odrq01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq01040/odrq01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq01050/odrq01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq01050/odrq01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq02040/odrq02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq02040/odrq02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq02050/odrq02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq02050/odrq02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq03050/odrq03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq03050/odrq03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq03060/odrq03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq03060/odrq03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq03070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq03070/odrq03070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq03070/odrq03070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq03070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq03080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq03080/odrq03080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq03080/odrq03080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq03080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq04040/odrq04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq04040/odrq04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq04050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq04050/odrq04050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq04050/odrq04050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq04050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq05040/odrq05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq05040/odrq05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq05050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq05050/odrq05050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq05050/odrq05050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq05050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq06040/odrq06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq06040/odrq06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq06050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq06050/odrq06050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq06050/odrq06050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq06050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq07050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq07050/odrq07050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq07050/odrq07050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq07050_flt.fits'




exit 0
