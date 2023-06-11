#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #
# Brave Browser:

# https://brave.com
# https://brave.com/linux/

sudo apt-get install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser.list

sudo apt-get update

sudo apt-get install brave-browser # The web browser from Brave

# ---------------------------------------------------------------------------- #
