#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# ---------------------------------------------------------------------------- #
# Flatpak:

# https://flatpak.org/setup/Ubuntu

sudo apt-get install flatpak # Application deployment framework for desktop apps
#sudo apt-get install gnome-software-plugin-flatpak # Flatpak support for GNOME Software

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# ---------------------------------------------------------------------------- #
# https://flathub.org

# Thunderbird -> see Thunderbird

# ------------------------------------ #
# Gephi:

# https://gephi.org
# https://flathub.org/apps/org.gephi.Gephi
flatpak install flathub org.gephi.Gephi
# $ flatpak run org.gephi.Gephi

# ------------------------------------ #
# LibreSprite:

# https://github.com/LibreSprite/LibreSprite
# https://flathub.org/apps/com.github.libresprite.LibreSprite
flatpak install flathub com.github.libresprite.LibreSprite
# $ flatpak run com.github.libresprite.LibreSprite

# ------------------------------------ #
# OnionShare:

# https://onionshare.org
# https://flathub.org/apps/org.onionshare.OnionShare
#flatpak install flathub org.onionshare.OnionShare
# $ flatpak run org.onionshare.OnionShare

# ------------------------------------ #
# Unvanquished:

# https://unvanquished.net
# https://flathub.org/apps/net.unvanquished.Unvanquished
#flatpak install flathub net.unvanquished.Unvanquished
# $ flatpak run net.unvanquished.Unvanquished

# ------------------------------------ #
# Warp:

# https://flathub.org/apps/app.drey.Warp
#flatpak install flathub app.drey.Warp
# $ flatpak run app.drey.Warp

# ------------------------------------ #
# Warpinator:

# https://flathub.org/apps/org.x.Warpinator
#flatpak install flathub org.x.Warpinator
# $ flatpak run org.x.Warpinator

# ---------------------------------------------------------------------------- #
