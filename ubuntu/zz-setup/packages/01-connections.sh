#!/usr/bin/env bash

sudo apt-get update

# ---------------------------------------------------------------------------- #
# browsers:

sudo apt-get install brave-browser # The web browser from Brave
sudo apt-get install epiphany-browser # Intuitive GNOME web browser
sudo apt-get install qutebrowser # Keyboard-driven, vim-like browser based on PyQt5

sudo snap remove chromium

# Tor Browser --> see local
# Firefox --> see PPA

# ------------------------------------ #
# browsers - non-graphical:

sudo apt-get install lynx # classic non-graphical (text-mode) web browser
sudo apt-get install w3m # WWW browsable pager with excellent tables/frames support

# ---------------------------------------------------------------------------- #
# RSS reader:

#sudo apt-get install quiterss # RSS/Atom news feeds reader

# ------------------------------------ #
# RSS reader - non-graphical:

sudo apt-get install newsboat # text mode rss feed reader with podcast support

# ---------------------------------------------------------------------------- #
# VPN:

sudo apt-get install protonvpn # ProtonVPN metapackage

# ---------------------------------------------------------------------------- #
# remote desktop:

sudo apt-get install realvnc-vnc-viewer # VNC® Viewer

# TeamViewer --> see local DEB

# ---------------------------------------------------------------------------- #
