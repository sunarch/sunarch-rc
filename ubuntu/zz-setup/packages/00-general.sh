#!/usr/bin/env bash

sudo apt-get update

# ------------------------------------ #
# general first:

sudo apt-get install gnome # Full GNOME Desktop Environment, with extra components

sudo apt-get install exfat-fuse # read and write exFAT driver for FUSE
# exfat-utils -- not found
sudo apt-get install ubuntu-wallpapers-eoan # Ubuntu 19.10 Wallpapers

# ------------------------------------ #
# general remove:

sudo apt-get remove gnome # Full GNOME Desktop Environment, with extra components
sudo apt-get remove gnome-core # GNOME Desktop Environment -- essential components

sudo apt-get remove gnome-contacts # Contacts manager for GNOME
# gnome-documents -- not found
sudo apt-get remove gnome-maps # map application for GNOME
sudo apt-get remove gnome-music # Music is the new GNOME music playing application
sudo apt-get remove gnome-online-accounts # service to manage online accounts for the GNOME desktop
sudo apt-get remove gnome-online-miners # Crawls through your online content
sudo apt-get remove gnome-user-share # User level public file sharing via WebDAV
# ubuntu-web-launchers -- not found

sudo apt-get remove apache2-bin # Apache HTTP Server (modules and other binary files)
sudo apt-get remove libapache2-mod-dnssd # Zeroconf support for Apache 2 via avahi

sudo apt-get remove aspell
sudo apt-get remove aspell-en

sudo apt-get remove bogofilter # fast Bayesian spam filter (meta package)
sudo apt-get remove bogofilter-common # fast Bayesian spam filter (common files)
sudo apt-get remove bogofilter-sqlite # fast Bayesian spam filter (sqlite)
sudo apt-get remove bogofilter-bdb # fast Bayesian spam filter (Berkeley DB)
sudo apt-get remove claws-mail-bogofilter # Bogofilter plugin for Claws Mail
sudo apt-get remove evolution-plugin-bogofilter # standard plugins for Evolution (bogofilter)

sudo apt-get remove evolution # groupware suite with mail client and organizer

sudo apt-get remove libfolks-eds26 # Evolution-data-server backend for libfolks
sudo apt-get remove libfolks26 # library to aggregates people into metacontacts
sudo apt-get remove folks-common # library to aggregates people into metacontacts (common files)

# ---------------------------------------------------------------------------- #
