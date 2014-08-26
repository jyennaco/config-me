#!/bin/bash
# 
# This script automatically updates your svn global ignores with the values
# defined in the svnignore_global file in this repository.
#
# Created by:    Joe Yennaco
# Date:          26 August 2014
#
# Instructions:
# 1. Clone this git repo: git clone https://github.com/jyennaco/config-me.git
# 2. Change to the repo directory: cd config-me
# 3. Ensure execute permissions are set on this script: chmod +x update-svn.sh
# 4. Run this script from the repo directory: ./update-svn.sh
# 
# Compatibility:
# -- Mac OS 10.x
# -- Linux
#

SVN_GLOBAL_IGNORES=`cat svnignore_global`
SVN_CONFIG=~/.subversion/config

echo "Updating SVN with the following global ignores: ${SVN_GLOBAL_IGNORES}"

echo "Commenting out previous settings of global-ignores ..."
sed -i "s|^global-ignores.*|#&|g" ${SVN_CONFIG}

echo "Adding new global-ignores ..."

sed -i "/\[miscellany\]/ a\
${SVN_GLOBAL_IGNORES}" ${SVN_CONFIG}

echo "SVN update complete!  Please check ~/.subversion/config to verify"
