#!/bin/bash

# Created by Joe Yennaco on 9/4/14

# Reference: http://malwaretips.com/threads/how-to-install-keepassx-2-0-alpha-4-on-linux.20699/

echo "Adding keepassx repository to apt-get ..."
sudo add-apt-repository -y ppa:keepassx/daily

echo "Updating apt-get packages ..."
sudo apt-get -y update

echo "Installing keepassx using apt-get ..."
sudo apt-get -y install keepassx

echo "Installation complete!"

