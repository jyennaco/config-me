#!/bin/bash

# Reference: https://www.spotify.com/us/download/previews/

echo "Installing Spotify for Debian-based Linux!"

echo "Adding spotify repository to /etc/apt/sources.list ..."

# 1. Add this line to your list of repositories by
#    editing your /etc/apt/sources.list
sudo /bin/bash  -c "echo 'deb http://repository.spotify.com stable non-free' >> /etc/apt/sources.list"

echo "Adding the spotify public key ..."

# 2. If you want to verify the downloaded packages,
#    you will need to add our public key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 94558F59

echo "Running apt-get update ..."

# 3. Run apt-get update
sudo apt-get update

echo "Installing the spotify app ..."

# 4. Install spotify!
sudo apt-get install spotify-client

echo "Spotify installation complete!"

