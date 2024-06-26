#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# ---------------------------------------------------------------------------- #
# Proton VPN:

# https://protonvpn.com
# https://protonvpn.com/download
# https://protonvpn.com/support/linux-vpn-setup/
# https://protonvpn.com/support/linux-ubuntu-vpn-setup/

# ------------------------------------ #
# local DEB:

# https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-2_all.deb

echo "c68a0b8dad58ab75080eed7cb989e5634fc88fca051703139c025352a6ee19ad  protonvpn-stable-release_1.0.3-2_all.deb" | sha256sum --check -

sudo apt-get update

sudo apt-get install protonvpn # ProtonVPN metapackage

# ------------------------------------ #
# PPA:
# - added automatically when installing from downloaded DEB package

# repository: https://repo.protonvpn.com/debian

# ---------------------------------------------------------------------------- #
# Alternative: Manual OpenVPN setup:

# https://protonvpn.com/support/linux-openvpn/

# ---------------------------------------------------------------------------- #
