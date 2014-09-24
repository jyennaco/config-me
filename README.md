config-me
=========

Repository for basic configuration settings such as gitignore and svnignore.  This is primarily intended for Mac or Linux workstation configuration, but there may be some useful stuff for server configuration as well.

Since this is workstation focused, I assume the scripts are not being run as root and may require sudo password entry one time per script (if required).

Basics
------

### debian-basics

This script installs some basic packages for debian-based Linux:

* vim
* git
* subversion
* curl

To run this script:

    $ cd debian-basics
    $ chmod +x install-debian-basics.sh
    $ ./install-debian-basics.sh

GIT
---

### GIT global ignore config on Linux Debian/Ubuntu/Mint

This script adds some useful global ignores for GIT, by copying the .gitignore_global file to your GIT configuration.  To run this script:

    $ cd git
    $ chmod +x update-git.sh
    $ ./update-git.sh

Subversion
----------

### Subversion global ignore config on Linux Debian/Ubuntu/Mint

This script adds some useful global ignores for Subversion, by adding the ignores in the svnignore_global file to your global Subversion config.  To run this script: 

    $ cd subversion
    $ chmod +x update-svn.sh
    $ ./update-svn.sh

Dropbox
-------

### Linux Debian/Ubuntu/Mint

This script automates the installation of Dropbox!  To install, type the following commands, assuming you're starting from the config-me directory:

    $ cd dropbox
    $ chmod +x install-dropbox-debian.sh
    $ ./install-dropbox-debian.sh

You may get a prompt to install some additional packages, I recommend doing so.  The script will install the correct 32 or 64-bit package and start the Dropbox app, so be ready to either create a new Dropbox account or enter your existing Dropbox credentials.

References:

1. [Dropbox](https://www.dropbox.com/install?os=lnx)

### Multiple Dropboxen on Linux Debian/Ubuntu/Mint

This script installs a 2nd instance of Dropbox! If you're like me, you may have separate Dropbox accounts for work and home. This script installs a 2nd Dropbox called "Dropbox-Work" and configures it to launch both each time you log in.  After setup you can edit the colors of the different Dropbox icons so you know which icon is for which account. Enjoy!  To install:

    $ cd dropbox
    $ chmod +x install-another-dropbox-debian.sh
    $ ./install-another-dropbox-debian.sh

Next, to configure both Dropboxen to start on boot, there are a couple ways to do it.  The easiest is to 

1. Open "Startup Applications"
2. Click "Add"
3. Browse for and select the install-another-dropbox-debian.sh script, and add a title and description
4. Profit!

References:

1. [maketecheasier.com](http://www.maketecheasier.com/run-multiple-dropbox-accounts-in-mac-and-linux/)

KeePassX
--------

### Linux Debian/Ubuntu/Mint

This script automates the installation of the super-userful password manager KeePassX.  To install:

    $ cd keepassx
    $ chmod +x install-keepassx-debian.sh
    $ ./install-keepassx-debian.sh
    $ *Type sudo password when prompted*

References:

1. [malwaretips.com](http://malwaretips.com/threads/how-to-install-keepassx-2-0-alpha-4-on-linux.20699/)

Spotify
-------

### Linux Debian/Ubuntu/Mint

This script automated the install of Spotify on Debian-based Linux.  To install

    $ cd spotify
    $ chmod +x install-spotify-debian.sh
    $ ./install-spotify-debian.sh
    $ *Type sudo password when prompted*

References:

1. [Spotify Preview](https://www.spotify.com/us/download/previews/)

