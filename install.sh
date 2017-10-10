#!/bin/bash

if [[ $EUID -ne 0 ]]; then
       echo "This script must be run as root" 
          exit 1
      fi

echo "Installing dependencies"
apt-get install scrot xclip
echo "Copying script to /usr/bin/scrots"
chmod 755 scrots.sh
cp scrots.sh /usr/bin/scrots

echo "All done, you should be able to call scrots to select an area to pull to your clipboard now"

