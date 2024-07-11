#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# ---------------------------------------------------------------------------- #
# Mozilla Thunderbird:

# https://www.thunderbird.net/en-US/thunderbird/all/

# Remove Canoncial-distributed Snap package:
sudo snap remove thunderbird

# Install developer-recommended Flatpak package:
flatpak install flathub org.mozilla.Thunderbird

# ---------------------------------------------------------------------------- #
