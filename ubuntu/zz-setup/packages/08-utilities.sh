#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

sudo apt-get update

# ---------------------------------------------------------------------------- #
# utilities:

sudo apt-get install clamtk # graphical front-end for ClamAV
sudo apt-get install deja-dup # Backup utility
sudo apt-get install dconf-editor # simple configuration storage system - graphical editor
sudo apt-get install diodon # GTK+ Clipboard manager
sudo apt-get install flameshot # Powerful yet simple-to-use screenshot software
sudo apt-get install gnome-characters # character map application
sudo apt-get install gnome-disk-utility # manage and configure disk drives and media
sudo apt-get install gnome-font-viewer # font viewer for GNOME
sudo apt-get install gnome-logs # viewer for the systemd journal
sudo apt-get install gnome-shell-extension-prefs # tool to enable / disable GNOME Shell extensions
sudo apt-get install gnome-shell-extension-manager # Utility for managing GNOME Shell
sudo apt-get install gnome-startup-applications # Startup Applications manager for GNOME
    # $ gnome-session-properties Extensions
sudo apt-get install gnome-system-monitor # Process viewer and system resource monitor for GNOME
sudo apt-get install gnome-tweaks # tool to adjust advanced configuration settings for GNOME
sudo apt-get install picom # lightweight compositor for X11
sudo apt-get install software-properties-gtk # manage the repositories that you install software from (gtk)
    # Software & Updates
sudo apt-get install yelp # Help browser for GNOME

sudo apt-get install synaptic # Graphical package manager
sudo apt-get install apt-xapian-index # maintenance and search tools for a Xapian index of Debian packages

# AppImagaLauncher Settings --> see individual
# Grub Customizer --> see individual

# Additional Drivers
# Advanced Network Configuration
# Language Support
# Passwords and Keys
# Settings
# Software Updater
# Time and Date
# Users & Groups

# ---------------------------------------------------------------------------- #
# utilities - PipeWire:

sudo apt-get install pipewire # audio and video processing engine multimedia server
sudo apt-get install pipewire-audio # recommended set of PipeWire packages for a standard audio desktop use
sudo apt-get install pipewire-alsa # PipeWire ALSA plugin
sudo apt-get install pipewire-pulse # PipeWire PulseAudio daemon
sudo apt-get install pipewire-jack # PipeWire JACK plugin
sudo apt-get install vlc-plugin-pipewire # PipeWire audio plugins for VLC

sudo apt-get install qpwgraph # User interface for controlling the PipeWire Graph
sudo apt-get install helvum # GTK patchbay for pipewire

# old, PulseAudio-related:
#sudo apt-get install pulsemixer # command-line mixer for PulseAudio with a curses interface
#sudo apt-get install pavucontrol # PulseAudio Volume Control
#sudo apt-get install pavumeter # PulseAudio Volume Meter
    # PulseAudio Volume Meter (Capture)
    # PulseAudio Volume Meter (Playback)

# ---------------------------------------------------------------------------- #
# tools:

sudo apt-get install gnome-calculator # GNOME desktop calculator
sudo apt-get install gnome-clocks # Simple GNOME app with stopwatch, timer, and world clock support
sudo apt-get install keepass2 # Password manager
sudo apt-get install pass # lightweight directory-based password manager

sudo apt-get install ncdu # ncurses disk usage viewer
sudo apt-get install qdirstat # Qt-based directory statistics

sudo apt-get install gtkhash # GTK+ utility for computing checksums and more
sudo apt-get install libdigest-sha3-perl # Perl extension for SHA-3

# Docker --> see individual

# ---------------------------------------------------------------------------- #
# emulation:

sudo apt-get install cmatrix # simulates the display from "The Matrix"
sudo apt-get install golly # Game of Life simulator using hashlife algorithm

sudo apt-get install qemu-system-x86 # QEMU full system emulation binaries (x86)
sudo apt-get install qemu-system-gui # QEMU full system emulation binaries (user interface and audio support)
sudo apt-get install qemu-utils # QEMU utilities

#sudo apt-get install virtualbox # x86 virtualization solution - base binaries

# PC-BASIC --> see local DEB

# ---------------------------------------------------------------------------- #
