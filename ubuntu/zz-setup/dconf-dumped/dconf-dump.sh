#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #

# https://askubuntu.com/questions/774394/wheres-the-gnome-terminal-config-file-located

dconf dump /org/gnome/terminal/ > ./gnome-terminal.preferences

#cat ./gnome-terminal.preferences | dconf load /org/gnome/terminal/

# ---------------------------------------------------------------------------- #
