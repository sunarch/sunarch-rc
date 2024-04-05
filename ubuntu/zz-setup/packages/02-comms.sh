#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

sudo apt-get update

# ---------------------------------------------------------------------------- #
# chat:

# Discord --> see local DEB
# Element Desktop --> see individual
# Signal --> see individual

# ---------------------------------------------------------------------------- #
# video chat:

# Microsoft Teams --> see individual

# ---------------------------------------------------------------------------- #
# email:

sudo apt-get install aerc # Pretty Good Email Client
sudo apt-get install thunderbird # Email, RSS and newsgroup client with integrated spam filter

# ---------------------------------------------------------------------------- #
# IRC:

#sudo apt-get install polari # Internet Relay Chat (IRC) client
#sudo apt-get install quassel # distributed IRC client - monolithic core+client
#sudo apt-get install smuxi # graphical IRC client

#sudo apt-get install hexchat # IRC client for X based on X-Chat 2
#sudo apt-get install hexchat-indicator # Hexchat Indicator Plugin

# ------------------------------------ #
# IRC - non-graphical:

#sudo apt-get install irssi # terminal based IRC client

sudo apt-get install weechat-curses # Fast, light and extensible chat client - console client
sudo apt-get install weechat-doc # Fast, light and extensible chat client - documentation
sudo apt-get install weechat-scripts # script collection for the WeeChat IRC client

# ---------------------------------------------------------------------------- #
