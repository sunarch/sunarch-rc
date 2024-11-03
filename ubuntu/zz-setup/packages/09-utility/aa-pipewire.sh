#!/usr/bin/env bash

sudo apt-get update

# ---------------------------------------------------------------------------- #
# utilities - PipeWire

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
