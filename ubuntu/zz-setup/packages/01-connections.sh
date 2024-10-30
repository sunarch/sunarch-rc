#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

sudo apt-get update

# ---------------------------------------------------------------------------- #
# browsers:

sudo apt-get install epiphany-browser # Intuitive GNOME web browser
sudo apt-get install netsurf-gtk # small web browser with CSS support for GTK
sudo apt-get install qutebrowser # Keyboard-driven, vim-like browser based on PyQt5

sudo snap remove chromium

# Brave Browser --> see individual
# Tor Browser --> see local
# Firefox --> see individual

# ------------------------------------ #
# browsers - non-graphical:

sudo apt-get install lynx # classic non-graphical (text-mode) web browser
sudo apt-get install w3m # WWW browsable pager with excellent tables/frames support

# ---------------------------------------------------------------------------- #
# RSS reader:

#sudo apt-get install quiterss # RSS/Atom news feeds reader

# ------------------------------------ #
# RSS reader - non-graphical:

# newsboat --> see individual

# ---------------------------------------------------------------------------- #
# VPN:

# Proton VPN --> see individual

# ---------------------------------------------------------------------------- #
# remote desktop:

sudo apt-get install realvnc-vnc-viewer # VNC® Viewer

# TeamViewer --> see individual

# ---------------------------------------------------------------------------- #
# other

sudo apt-get install cec-utils # USB CEC Adaptor communication Library (utility programs)
#                                http://libcec.pulse-eight.com
#sudo apt-get install putty # Telnet/SSH client for X

# ---------------------------------------------------------------------------- #
