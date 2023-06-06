#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #
# PPAs

# Grub Customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer

# AppImageLauncher
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt-get update
sudo apt-get install appimagelauncher

# Racket
sudo add-apt-repository ppa:plt/racket
sudo apt-get update
sudo apt-get install racket

# ---------------------------------------------------------------------------- #
