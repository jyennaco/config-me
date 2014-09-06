#!/bin/bash
# 
# This script automatically updates your git global ignores with the values
# defined in the .gitignore_global file in this repository.
#
# Created by:    Joe Yennaco
# Date:          26 August 2014
#
# Instructions:
# 1. Clone this git repo: git clone https://github.com/jyennaco/config-me.git
# 2. Change to the repo directory: cd config-me
# 3. Ensure execute permissions are set on this script: chmod +x update-git.sh
# 4. Run this script from the repo directory: ./update-git.sh
# 
# Compatibility:
# -- Mac OS 10.x
# -- Linux
#

echo "Updating GIT with the following global ignores: "
cat .gitignore_global

echo "Backing up existing .gitignore_global file ..."

if [ -f ~/.gitignore_global ]
	then
	mv ~/.gitignore_global ~/.gitignore_global.backup
fi

echo "Adding new .gitignore_global file ..."

cp -f .gitignore_global ~/

echo "GIT update complete!  Please check ~/.gitignore_global to verify"
