config-me
=========

Repository for basic configuration settings such as gitignore and svnignore.  This is primarily intended for Mac or Linux workstation configuration, but there may be some useful stuff for server configuration as well.

Since this is workstation focused, I assume the scripts are not being run as root and may require sudo password entry one time per script (if required).

GIT
---

### Install GIT on Linux Debian/Ubuntu/Mint

Subversion
----------

### Install Subversion on Linux Debian/Ubuntu/Mint

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


