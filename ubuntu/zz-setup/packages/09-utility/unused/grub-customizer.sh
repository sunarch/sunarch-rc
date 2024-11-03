#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #
# Grub Customizer:
# - Ubuntu repository version available for certain versions

# https://launchpad.net/grub-customizer

#sudo add-apt-repository ppa:danielrichter2007/grub-customizer
#sudo apt-get update

#sudo apt-get install grub-customizer # Grub Customizer - A graphical Grub2/BURG configuration application
sudo apt-get remove grub-customizer

# ------------------------------------ #

# for 'lunar' it currently needs to be changed back to 'kinetic'

# ---------------------------------------------------------------------------- #

# not used anymore because it got misaligned with new GRUB version in
#     Ubuntu 23.10 and because it complicates config files
#
# see also the following blog post for criticism:
# https://easylinuxtipsproject.blogspot.com/p/grub-customizer.html

# ---------------------------------------------------------------------------- #
