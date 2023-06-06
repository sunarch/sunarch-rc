#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #
# Mozilla Firefox

sudo snap remove firefox
sudo add-apt-repository ppa:mozillateam/ppa
sudo apt-get update

echo '
Package: firefox*
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozillateamppa

sudo apt-get install firefox # Safe and easy web browser from Mozilla

# ---------------------------------------------------------------------------- #

