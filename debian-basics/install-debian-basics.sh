#!/bin/bash

# Created by Joe Yennaco on 9/5/14

# This script is intended to install some basics on Debian-based Linux

echo "Updating apt-get ..."
sudo apt-get -y update

echo "Installing vim ..."
sudo apt-get -y install vim

echo "Installing GIT ..."
sudo apt-get -y install git

echo "Installing Subversion ..."
sudo apt-get -y install subversion

echo "Installing curl ..."
sudo apt-get -y install curl

echo "Completed the basic Debian-based Linux install!"

