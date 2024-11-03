#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #
# Flatpak

# https://flatpak.org/setup/Ubuntu

sudo apt-get install flatpak # Application deployment framework for desktop apps
#sudo apt-get install gnome-software-plugin-flatpak # Flatpak support for GNOME Software

# ---------------------------------------------------------------------------- #
# https://flathub.org

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# ---------------------------------------------------------------------------- #
