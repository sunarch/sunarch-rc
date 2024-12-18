#!/usr/bin/env bash

sudo apt-get update

# ---------------------------------------------------------------------------- #
# terminals

sudo apt-get install foot # Fast, lightweight and minimalistic Wayland terminal emulator
sudo apt-get install gnome-terminal # GNOME terminal emulator application
sudo apt-get install kitty # fast, featureful, GPU based terminal emulator
sudo apt-get install xterm # X terminal emulator
    # includes: UXterm

#sudo apt-get install guake # Drop-down terminal for GNOME Desktop Environment
#sudo apt-get install guake-indicator # Guake terminal app indicator

# ---------------------------------------------------------------------------- #
# apps

sudo apt-get install btop # Modern and colorful command line resource monitor that shows usage and stats
sudo apt-get install htop # interactive processes viewer
sudo apt-get install ranger # Console File Manager with VI Key Bindings

# ------------------------------------ #
# non-graphical

sudo apt-get install screen # terminal multiplexer with VT100/ANSI terminal emulation

# ---------------------------------------------------------------------------- #
# shells

sudo apt-get install fish # friendly interactive shell

# ---------------------------------------------------------------------------- #
# other - non-graphical

# linux-tools: includes `perf`
sudo apt-get install linux-tools-common
sudo apt-get install linux-tools-$(uname -r)

sudo apt-get install detox # replace problematic characters in filenames

# ---------------------------------------------------------------------------- #
