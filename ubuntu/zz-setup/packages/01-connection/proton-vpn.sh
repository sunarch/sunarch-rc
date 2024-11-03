#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #
# Proton VPN

# https://protonvpn.com
# https://protonvpn.com/download
# https://protonvpn.com/support/linux-vpn-setup/
# https://protonvpn.com/support/linux-ubuntu-vpn-setup/

# ------------------------------------ #
# local DEB:

# 1. Download the repository configuration and keys required to install the Proton VPN app. Enter:
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-3_all.deb

# 2. Install the Proton VPN repository containing the new app. Enter:
sudo dpkg -i ./protonvpn-stable-release_1.0.3-3_all.deb && sudo apt update

# Please don’t try  to check the GPG signature of this release package (dpkg-sig –verify). Our internal release process is split into several part and the release package is signed with a GPG key, and the repo is signed with another GPG key. So the keys don’t match.

# If you want to check the repo package integrity, you can check its checksum with the following command:

echo "de7ef83a663049b5244736d3eabaacec003eb294a4d6024a8fbe0394f22cc4e5  protonvpn-stable-release_1.0.3-3_all.deb" | sha256sum --check -

# 3. If you’re running the old (v3) Proton VPN app or CLI (stable or beta versions), simply run:

sudo apt update && sudo apt upgrade

# If you don’t have Proton VPN installed, run:

sudo apt install proton-vpn-gnome-desktop

# To check for updates and ensure that you’re running the latest version of the app, enter:

sudo apt update && sudo apt upgrade

# ------------------------------------ #
# Linux system tray icon (optional)

# By default, the GNOME desktop doesn’t support tray icons. To enable this functionality on Debian-based distributions:

# 1. Run:

sudo apt install libayatana-appindicator3-1 gir1.2-ayatanaappindicator3-0.1 gnome-shell-extension-appindicator

# 2. Restart the Proton VPN app (if it was already running). To do this, click V → Quit and open the app again.

# ------------------------------------ #
# repository:
# - added automatically when installing from downloaded DEB package

# repository: https://repo.protonvpn.com/debian

# ---------------------------------------------------------------------------- #
# Alternative: Manual OpenVPN setup:

# https://protonvpn.com/support/linux-openvpn/

# ---------------------------------------------------------------------------- #
