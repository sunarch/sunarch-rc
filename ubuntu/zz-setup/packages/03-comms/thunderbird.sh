#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #
# Mozilla Thunderbird

# https://www.thunderbird.net/en-US/thunderbird/all/

# Remove Canoncial-distributed Snap package:
sudo snap remove thunderbird

# Install developer-recommended Flatpak package:
flatpak install flathub org.mozilla.Thunderbird

# ---------------------------------------------------------------------------- #
# previously

#sudo apt-get install thunderbird # Email, RSS and newsgroup client with integrated spam filter

# ---------------------------------------------------------------------------- #
