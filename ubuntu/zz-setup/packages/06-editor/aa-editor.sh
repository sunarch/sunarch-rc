#!/usr/bin/env bash

sudo apt-get update

# ---------------------------------------------------------------------------- #
# editors

sudo apt-get install bless # Full featured hexadecimal editor
# NOTE: Bless is not available on Ubuntu 24.04 as of 2024-07-11

sudo apt-get install emacs # GNU Emacs editor (metapackage)
    # emacs (GUI)
    # emacs (terminal)
sudo apt-get install ghostwriter # Distraction-free, themeable Markdown editor
sudo apt-get install gnome-text-editor # simple text editor for GNOME
sudo apt-get install meld # graphical tool to diff and merge files
sudo apt-get install micro # modern and intuitive terminal-based text editor
sudo apt-get install neovim # heavily refactored vim fork
sudo apt-get install vim # Vi IMproved - enhanced vi editor

sudo apt-get install gedit # popular text editor for the GNOME desktop environment
sudo apt-get install gedit-plugin-bookmarks # Bookmarks plugin for gedit
sudo apt-get install gedit-plugin-bracket-completion # Bracket Completion plugin for gedit
sudo apt-get install gedit-plugin-character-map # Character Map plugin for gedit
sudo apt-get install gedit-plugin-code-comment # Code Comment plugin for gedit
sudo apt-get install gedit-plugin-color-picker # Color Picker plugin for gedit
sudo apt-get install gedit-plugin-draw-spaces # Draw Spaces plugin for gedit
sudo apt-get install gedit-plugin-git # Git plugin for gedit
sudo apt-get install gedit-plugin-multi-edit # Multi Edit plugin for gedit
sudo apt-get install gedit-plugin-session-saver # Session Saver plugin for gedit

# Obsidian --> see local DEB

# ------------------------------------ #
# editors - non-graphical

sudo apt-get install nano # small, friendly text editor inspired by Pico
sudo apt-get install sed # GNU stream editor for filtering/transforming text

# ---------------------------------------------------------------------------- #
# database browsers

sudo apt-get install sqlitebrowser # GUI editor for SQLite databases

# ------------------------------------ #
# database browsers - non-graphical

sudo apt-get install sqlite3 # Command line interface for SQLite 3

# ---------------------------------------------------------------------------- #
# IDE

sudo apt-get install codeblocks # Code::Blocks integrated development environment (IDE)

sudo apt-get install geany # fast and lightweight IDE
sudo apt-get install geany-plugins # set of plugins for Geany

# DrRacket --> see individual

# ---------------------------------------------------------------------------- #
# LaTeX - base

sudo apt-get install texlive # TeX Live: A decent selection of the TeX Live packages
sudo apt-get install texlive-games # TeX Live: Games typesetting
sudo apt-get install texlive-humanities # TeX Live: Humanities packages
sudo apt-get install texlive-humanities-doc # TeX Live: Documentation files for texlive-humanities

# Texdoctk
# TeXinfo

# ------------------------------------ #
# LaTeX - editors

sudo apt-get install gummi # simple LaTeX editor with live preview
sudo apt-get install lyx # document processor
#sudo apt-get install texmaker # cross-platform LaTeX editor
#sudo apt-get install texstudio # LaTeX Editor
sudo apt-get install texworks # Environment for authoring TeX (LaTeX, ConTeXt, etc) documents

# ---------------------------------------------------------------------------- #
