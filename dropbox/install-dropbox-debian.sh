#!/bin/bash

# Created by Joe Yennaco on 9/4/14

echo "Determining if this linux system is 64 or 32 bit ..."
arch=`uname -m`

echo "Determine archicture is: ${arch}"

if [[ ${arch} == x86_64 ]]
then
    echo "Downloading and extracting 64-bit Dropbox ..."
    cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
elif [[ ${arch} == i686 ]]
then
    echo "Downloading and extracting 32-bit Dropbox ..."
    cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86" | tar xzf -
else
    echo "Could not determine architecture, exiting ..."
    exit 0
fi

echo "Dropbox downloaded and extracted!"

echo "Running the dropbox daemon to install it ..."
~/.dropbox-dist/dropboxd &

echo "Dropbox installation complete!"

