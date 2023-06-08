#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #
# PPAs:

# ------------------------------------ #
# AppImageLauncher:

# https://github.com/TheAssassin/AppImageLauncher
# https://launchpad.net/%7Eappimagelauncher-team/+archive/ubuntu/stable

sudo apt-get install software-properties-common

sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt-get update

sudo apt-get install appimagelauncher # AppImage helper

# ------------------------------------ #
# Grub Customizer:
# - Ubuntu repository version available for certain versions

# https://launchpad.net/grub-customizer

sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update

sudo apt-get install grub-customizer # Grub Customizer - A graphical Grub2/BURG configuration application

# ---------------------------------------------------------------------------- #
# unused

# ------------------------------------ #
# Deadsnakes (older python versions)
# - by [Felix Krull](https://launchpad.net/~fkrull)

# https://launchpad.net/~deadsnakes/+archive/ubuntu/ppa

# ------------------------------------ #
# OBS Studio
# - Ubuntu repository version available

# https://launchpad.net/~obsproject/+archive/ubuntu/obs-studio
# ------------------------------------ #
# Pygame + Python3
# - Ubuntu repository version available

# https://launchpad.net/~thopiekar/+archive/ubuntu/pygame
# ------------------------------------ #
# RuneScape
# - Ubuntu repository version available

# ------------------------------------ #
# TeamViewer
# - added automatically when installing from downloaded DEB package

# ---------------------------------------------------------------------------- #
