#!/bin/bash

# Created by Joe Yennaco on 9/5/14

# Defines the locations of your dropbox config folder
# Note: This is not where your files are. This assumes you
# already have a regular typical install Dropbox and you 
# want to create a "work" Dropbox
dropboxen=( ".dropbox" ".dropbox-work" )

# Loop through each dropbox location, create it if it doesn't exist
# and start the daemon for each Dropbox instance
for dropbox in ${dropboxen[@]}
do

    # If the dropbox folder doesn't exist, create it and link 
    # .Xauthority
    if ! [ -d "${HOME}/${dropbox}" ]
    then
        mkdir -p "${HOME}/${dropbox}" 2> /dev/null
        ln -s "${HOME}/.Xauthority" "${HOME}/${dropbox}/" 2> /dev/null
    fi

    # Otherwise start the daemon for each dropbox instance
    HOME="${HOME}/${dropbox}"
    /home/$USER/.dropbox-dist/dropboxd 2> /dev/null &
done
