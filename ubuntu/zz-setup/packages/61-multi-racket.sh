#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #
# Racket:

# https://download.racket-lang.org

# ------------------------------------ #
# PPA:

# https://launchpad.net/~plt/+archive/ubuntu/racket

sudo add-apt-repository ppa:plt/racket
sudo apt-get update

sudo apt-get install racket # extensible programming language in the Scheme family
    # DrRacket

# ------------------------------------ #
# Flatpak:

# https://github.com/flathub/org.racket_lang.Racket

# https://flathub.org/apps/org.racket_lang.Racket
#flatpak install flathub org.racket_lang.Racket
# $ flatpak run org.racket_lang.Racket

# ---------------------------------------------------------------------------- #
