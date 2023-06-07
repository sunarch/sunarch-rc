#!/usr/bin/env bash

sudo apt-get update

# ------------------------------------ #
# general first:

sudo apt-get install gnome # Full GNOME Desktop Environment, with extra components

sudo apt-get install exfat-fuse # read and write exFAT driver for FUSE
# exfat-utils -- not found
sudo apt-get install ubuntu-wallpapers-eoan # Ubuntu 19.10 Wallpapers

# ------------------------------------ #
# general remove:

sudo apt-get remove gnome # Full GNOME Desktop Environment, with extra components
sudo apt-get remove gnome-core # GNOME Desktop Environment -- essential components

sudo apt-get remove gnome-contacts # Contacts manager for GNOME
# gnome-documents -- not found
sudo apt-get remove gnome-maps # map application for GNOME
sudo apt-get remove gnome-music # Music is the new GNOME music playing application
sudo apt-get remove gnome-online-accounts # service to manage online accounts for the GNOME desktop
sudo apt-get remove gnome-online-miners # Crawls through your online content
sudo apt-get remove gnome-user-share # User level public file sharing via WebDAV
# ubuntu-web-launchers -- not found

sudo apt-get remove apache2-bin # Apache HTTP Server (modules and other binary files)
sudo apt-get remove libapache2-mod-dnssd # Zeroconf support for Apache 2 via avahi

sudo apt-get remove aspell
sudo apt-get remove aspell-en

sudo apt-get remove bogofilter # fast Bayesian spam filter (meta package)
sudo apt-get remove bogofilter-common # fast Bayesian spam filter (common files)
sudo apt-get remove bogofilter-sqlite # fast Bayesian spam filter (sqlite)
sudo apt-get remove bogofilter-bdb # fast Bayesian spam filter (Berkeley DB)
sudo apt-get remove claws-mail-bogofilter # Bogofilter plugin for Claws Mail
sudo apt-get remove evolution-plugin-bogofilter # standard plugins for Evolution (bogofilter)

evolution # groupware suite with mail client and organizer

sudo apt-get remove libfolks-eds26 # Evolution-data-server backend for libfolks
sudo apt-get remove libfolks26 # library to aggregates people into metacontacts
sudo apt-get remove folks-common # library to aggregates people into metacontacts (common files)

# ---------------------------------------------------------------------------- #
# launcher:

# ------------------------------------ #
# dock:

sudo apt-get install nautilus # file manager and graphical shell for GNOME
sudo apt-get install nautilus-dropbox # Dropbox integration for Nautilus
sudo apt-get install nautilus-extension-gnome-terminal # GNOME terminal emulator application - Nautilus extension
sudo apt-get install nautilus-nextcloud # Nextcloud integration for Nautilus
sudo apt-get install gnome-sushi # sushi is a quick previewer for nautilus

sudo apt-get install gnome-system-monitor # Process viewer and system resource monitor for GNOME
sudo apt-get install meld # graphical tool to diff and merge files

# Obsidian --> see local DEB

# ------------------------------------ #
# connections:

sudo apt-get install protonvpn # ProtonVPN metapackage
sudo apt-get install realvnc-vnc-viewer # VNC® Viewer
sudo apt-get install teamviewer # Remote control and meeting solution.
sudo apt-get install thunderbird # Email, RSS and newsgroup client with integrated spam filter

# Microsoft Teams --> see multi

# ------------------------------------ #
# browsers:

sudo apt-get install brave-browser # The web browser from Brave
sudo apt-get install epiphany-browser # Intuitive GNOME web browser
sudo apt-get install qutebrowser # Keyboard-driven, vim-like browser based on PyQt5

# Tor Browser --> see local
# Firefox --> see PPA

# non-graphical:
sudo apt-get install lynx # classic non-graphical (text-mode) web browser
sudo apt-get install w3m # WWW browsable pager with excellent tables/frames support

# ------------------------------------ #
# chat:

sudo apt-get install element-desktop # A feature-rich client for Matrix.org
sudo apt-get install polari # Internet Relay Chat (IRC) client
sudo apt-get install quassel # distributed IRC client - monolithic core+client
sudo apt-get install smuxi # graphical IRC client

sudo apt-get install hexchat # IRC client for X based on X-Chat 2
sudo apt-get install hexchat-indicator # Hexchat Indicator Plugin

# Discord --> see local DEB
# Signal --> see PPA

# ------------------------------------ #
# devices:

sudo apt-get install brasero # CD/DVD burning application for GNOME
sudo apt-get install cheese # tool to take pictures and videos from your webcam
sudo apt-get install nmapsi4 # graphical interface to nmap, the network scanner
sudo apt-get install simple-scan # Simple Scanning Utility
sudo apt-get install sound-juicer # GNOME CD Ripper

# ------------------------------------ #
# documents:

sudo apt-get install evince # Document (PostScript, PDF) viewer
sudo apt-get install pdfsam # PDF Split and Merge
sudo apt-get install scribus # Open Source Desktop Page Layout
sudo apt-get install sigil # multi-platform ebook editor

sudo apt-get install libreoffice-calc # office productivity suite -- spreadsheet
sudo apt-get install libreoffice-draw # office productivity suite -- drawing
sudo apt-get install libreoffice-impress # office productivity suite -- presentation
sudo apt-get install libreoffice-math # office productivity suite -- equation editor
sudo apt-get install libreoffice-writer # office productivity suite -- word processor
# LibreOffice Start Center

# non-graphical:

sudo apt-get install libreoffice-help-en-us # office productivity suite -- English_american help
sudo apt-get install libreoffice-help-hu # office productivity suite -- Hungarian help

sudo apt-get install hunspell # spell checker and morphological analyzer (program)

# non-graphical - language packs:

sudo apt-get install hunspell-ar # Arabic dictionary for hunspell
# no hyphen-ar
sudo apt-get install libreoffice-l10n-ar # office productivity suite -- Arabic language package

sudo apt-get install hunspell-ca # Catalan dictionaries for hunspell
sudo apt-get install hyphen-ca # Catalan hyphenation patterns
sudo apt-get install libreoffice-l10n-ca # office productivity suite -- Catalan language package

sudo apt-get install hunspell-de-de # German dictionary for hunspell
sudo apt-get install hyphen-de # German hyphenation patterns
sudo apt-get install libreoffice-l10n-de # office productivity suite -- German language package

sudo apt-get install hunspell-de-med # German medical dictionary for hunspell

sudo apt-get install hunspell-el # Modern Greek dictionary for hunspell
sudo apt-get install hyphen-el # Modern Greek hyphenation patterns
sudo apt-get install libreoffice-l10n-el # office productivity suite -- Greek language package

sudo apt-get install hunspell-en-ca # English (Canada) dictionary for hunspell
sudo apt-get install hyphen-en-ca # English (Canada) hyphenation patterns

sudo apt-get install hunspell-en-gb # English (GB) dictionary for hunspell
sudo apt-get install hyphen-en-gb # English (GB) hyphenation patterns
sudo apt-get install libreoffice-l10n-en-gb # office productivity suite -- English_british language package

sudo apt-get install hunspell-en-med # English medical dictionary for hunspell
# no hyphen-en-med
# no libreoffice-l10n-en-med

sudo apt-get install hunspell-en-us # English_american dictionary for hunspell
sudo apt-get install hyphen-en-us # English (US) hyphenation patterns
# no libreoffice-l10n-en-us

sudo apt-get install hunspell-en-za # English (South Africa) dictionary for hunspell
# no hyphen-en-za
sudo apt-get install libreoffice-l10n-en-za # office productivity suite -- English_southafrican language package

sudo apt-get install hunspell-es # Spanish dictionary for hunspell
sudo apt-get install hyphen-es # Spanish hyphenation patterns
sudo apt-get install libreoffice-l10n-es # office productivity suite -- Spanish language package

sudo apt-get install hunspell-fr # French dictionary for hunspell (dependency package)
sudo apt-get install hyphen-fr # French hyphenation patterns
sudo apt-get install libreoffice-l10n-fr # office productivity suite -- French language package

# no hunspell-ga
sudo apt-get install hyphen-ga # Irish hyphenation patterns
sudo apt-get install libreoffice-l10n-ga # office productivity suite -- Gaelic language package

sudo apt-get install hunspell-gd # Scottish Gaelic dictionary for hunspell
# no hyphen-gd
sudo apt-get install libreoffice-l10n-gd # office productivity suite -- Scottish_gaelic language package

sudo apt-get install hunspell-he # Hebrew dictionary for hunspell
# no hyphen-he
sudo apt-get install libreoffice-l10n-he # office productivity suite -- Hebrew language package

sudo apt-get install hunspell-hu # Hungarian dictionary for hunspell
sudo apt-get install hyphen-hu # Hungarian hyphenation patterns
sudo apt-get install libreoffice-l10n-hu # office productivity suite -- Hungarian language package

sudo apt-get install hunspell-is # Icelandic dictionary for hunspell
sudo apt-get install hyphen-is # Icelandic hyphenation patterns
sudo apt-get install libreoffice-l10n-is # office productivity suite -- Icelandic language package

sudo apt-get install hunspell-it # Italian dictionary for hunspell
sudo apt-get install hyphen-it # Italian hyphenation patterns
sudo apt-get install libreoffice-l10n-it # office productivity suite -- Italian language package

# no hunspell-ja
# no hyphen-ja
sudo apt-get install libreoffice-l10n-ja # office productivity suite -- Japanese language package

sudo apt-get install hunspell-pl # Polish dictionary for hunspell
sudo apt-get install hyphen-pl # Polish hyphenation patterns for LibreOffice/OpenOffice.org
sudo apt-get install libreoffice-l10n-pl # office productivity suite -- Polish language package

sudo apt-get install hunspell-ro # Romanian dictionary for hunspell
sudo apt-get install hyphen-ro # Romanian hyphenation patterns
sudo apt-get install libreoffice-l10n-ro # office productivity suite -- Romanian language package

sudo apt-get install hunspell-ru # Russian dictionary for hunspell
sudo apt-get install hyphen-ru # Russian hyphenation patterns for LibreOffice/OpenOffice.org
sudo apt-get install libreoffice-l10n-ru # office productivity suite -- Russian language package

sudo apt-get install hunspell-sr # Serbian dictionary for hunspell
sudo apt-get install hyphen-sr # Serbian hyphenation patterns
sudo apt-get install libreoffice-l10n-sr # office productivity suite -- Serbian language package

# ------------------------------------ #
# editors:

sudo apt-get install bless # Full featured hexadecimal editor
sudo apt-get install sqlitebrowser # GUI editor for SQLite databases
sudo apt-get install emacs # GNU Emacs editor (metapackage)
    # emacs (GUI)
    # emacs (terminal)
sudo apt-get install gedit # popular text editor for the GNOME desktop environment
sudo apt-get install ghostwriter # Distraction-free, themeable Markdown editor
sudo apt-get install gnome-text-editor # simple text editor for GNOME
sudo apt-get install neovim # heavily refactored vim fork
sudo apt-get install vim # Vi IMproved - enhanced vi editor

# non-graphical:
sudo apt-get install micro # modern and intuitive terminal-based text editor
sudo apt-get install nano # small, friendly text editor inspired by Pico
sudo apt-get install sed # GNU stream editor for filtering/transforming text
sudo apt-get install sqlite3 # Command line interface for SQLite 3

# ------------------------------------ #
# IDE:

sudo apt-get install codeblocks # Code::Blocks integrated development environment (IDE)

sudo apt-get install geany # fast and lightweight IDE
sudo apt-get install geany-plugins # set of plugins for Geany

# Racket --> see multi
    # DrRacket
# Visual Studio Code --> see local DEB

# ------------------------------------ #
# JetBrains:

# CLion --> installed via Toolbox
# IntelliJ IDEA Community Edition --> installed via Toolbox
# JetBrains Toolbox --> see local
# PyCharm Community --> installed via Toolbox

# ------------------------------------ #
# files:

sudo apt-get install filezilla # Full-featured graphical FTP/FTPS/SFTP client
sudo apt-get install nextcloud-desktop # Nextcloud folder synchronization tool

# Dropbox --> see local DEB
# IPFS Desktop --> see AppImage
# OnionShare --> see Flatpak
# Tixati --> see local DEB
# Warp --> see Flatpak
# Warpinator --> see Flatpak

# ------------------------------------ #
# finance:

sudo apt-get install eqonomize # personal accounting software for the small household economy
sudo apt-get install gnucash # personal and small-business financial-accounting software
sudo apt-get install homebank # Manage your personal accounts at home

# ------------------------------------ #
# LaTeX:

sudo apt-get install gummi # simple LaTeX editor with live preview
sudo apt-get install lyx # document processor
sudo apt-get install texmaker # cross-platform LaTeX editor
sudo apt-get install texstudio # LaTeX Editor
sudo apt-get install texworks # Environment for authoring TeX (LaTeX, ConTeXt, etc) documents

# Texdoctk
# TeXinfo

# LaTeX background:
sudo apt-get install texlive # TeX Live: A decent selection of the TeX Live packages

# ------------------------------------ #
# media-audio:

sudo apt-get install ardour # the digital audio workstation
sudo apt-get install audacity # fast, cross-platform audio editor
sudo apt-get install gnome-sound-recorder # simple and modern sound recorder for GNOME
sudo apt-get install hydrogen # advanced drum machine/step sequencer
sudo apt-get install lmms # Linux Multimedia Studio
sudo apt-get install meterbridge # Collection of Audio meters for the JACK audio server
sudo apt-get install muse # Qt-based audio/MIDI sequencer
sudo apt-get install musescore3 # cross-platform multi-lingual music composition and notation, v3
sudo apt-get install qjackctl # User interface for controlling the JACK sound server
sudo apt-get install qsynth # fluidsynth MIDI sound synthesiser front-end
sudo apt-get install qtractor # MIDI/Audio multi-track sequencer application
sudo apt-get install rosegarden # music editor and MIDI/audio sequencer
sudo apt-get install seq24 # Real time MIDI sequencer
sudo apt-get install sonic-pi # Live Coding for Everyone
sudo apt-get install traverso # Multitrack audio recorder and editor

# Spotify --> see PPA

# ------------------------------------ #
# media-image:

sudo apt-get install darktable # virtual lighttable and darkroom for photographers
sudo apt-get install gimp # GNU Image Manipulation Program
sudo apt-get install grafx2 # ultimate 256-color bitmap paint program
sudo apt-get install imagemagick # image manipulation programs -- binaries
sudo apt-get install inkscape # vector-based drawing program
sudo apt-get install krita # pixel-based image manipulation program
sudo apt-get install mtpaint # painting program to create pixel art and manipulate digital photos
sudo apt-get install pikopixel.app # Pixel-art editor
sudo apt-get install qtqr # Qt frontend for QR code generator and decoder
sudo apt-get install shotwell # digital photo organizer

# Gephi --> see Flatpak
# LibreSprite --> see Flatpak

# Image Viewer (GNOME)

# ------------------------------------ #
# media-video:

# blender
sudo apt-get install celluloid # simple GTK+ frontend for mpv
sudo apt-get install kdenlive # non-linear video editor
sudo apt-get install mkvtoolnix-gui # Set of tools to work with Matroska files - GUI frontend
sudo apt-get install mpv # video player based on MPlayer/mplayer2
sudo apt-get install obs-studio # recorder and streamer for live video content
sudo apt-get install pitivi # non-linear audio/video editor using GStreamer
sudo apt-get install vlc # multimedia player and streamer

# ------------------------------------ #
# system:

sudo apt-get install deja-dup # Backup utility
sudo apt-get install gnome-disk-utility # manage and configure disk drives and media
sudo apt-get install gnome-font-viewer # font viewer for GNOME
sudo apt-get install gnome-logs # viewer for the systemd journal
sudo apt-get install gnome-shell-extension-prefs # tool to enable / disable GNOME Shell extensions
sudo apt-get install gnome-shell-extension-manager # Utility for managing GNOME Shell
sudo apt-get install gnome-startup-applications # Startup Applications manager for GNOME
    # $ gnome-session-properties Extensions
sudo apt-get install pavucontrol # PulseAudio Volume Control
sudo apt-get install pavumeter # PulseAudio Volume Meter
    # PulseAudio Volume Meter (Capture)
    # PulseAudio Volume Meter (Playback)
sudo apt-get install picom # lightweight compositor for X11
sudo apt-get install software-properties-gtk # manage the repositories that you install software from (gtk)
    # Software & Updates
sudo apt-get install synaptic # Graphical package manager
sudo apt-get install gnome-tweaks # tool to adjust advanced configuration settings for GNOME

# AppImagaLauncher Settings --> see PPA
# Grub Customizer --> see PPA

# Additional Drivers
# Advanced Network Configuration
# Language Support
# Passwords and Keys
# Settings
# Software Updater
# Time and Date
# Users & Groups

# ------------------------------------ #
# tools:

sudo apt-get install baobab # GNOME disk usage analyzer
sudo apt-get install clamtk # graphical front-end for ClamAV
sudo apt-get install gnome-calculator # GNOME desktop calculator
sudo apt-get install gnome-clocks # Simple GNOME app with stopwatch, timer, and world clock support
sudo apt-get install gramps # Genealogical research program
sudo apt-get install gtkhash # GTK+ utility for computing checksums and more
sudo apt-get install keepass2 # Password manager
sudo apt-get install qdirstat # Qt-based directory statistics
sudo apt-get install wireshark # network traffic analyzer - meta-package

# balenaEtcher --> see AppImage

# Power Statistics

# ------------------------------------ #
# utilities:

sudo apt-get install diodon # GTK+ Clipboard manager
sudo apt-get install file-roller # archive manager for GNOME
sudo apt-get install flameshot # Powerful yet simple-to-use screenshot software
sudo apt-get install gnome-characters # character map application
sudo apt-get install xarchiver # GTK+ frontend for most used compression formats
sudo apt-get install yelp # Help browser for GNOME

# ------------------------------------ #
# emulation:

sudo apt-get install cmatrix # simulates the display from "The Matrix"
sudo apt-get install golly # Game of Life simulator using hashlife algorithm
sudo apt-get install virtualbox # x86 virtualization solution - base binaries

# PC-BASIC --> see local DEB

# ------------------------------------ #
# games-proprietary:

# Fantasy Grounds

# Minecraft Launcher --> see local DEB

# Steam
# WorldPainter

# GDLauncher -> see AppImage
# Worldographer -> see local DEB

# ------------------------------------ #
# games-free:

# GNOME games - metapackage
#sudo apt-get install gnome-games # games for the GNOME desktop

sudo apt-get install 0ad # Real-time strategy game of ancient warfare
sudo apt-get install alienblaster # Classic 2D shoot 'em up
sudo apt-get install assaultcube # realistic first-person-shooter
sudo apt-get install billard-gl # 3D billiards game
sudo apt-get install criticalmass # Shoot-em-up a la galaxian
sudo apt-get install epiphany # clone of Boulder Dash game
sudo apt-get install extremetuxracer # 3D racing game featuring Tux, the Linux penguin
#sudo apt-get install frogatto # 2D platformer game starring a quixotic frog
sudo apt-get install hedgewars # Funny turn-based artillery game, featuring fighting hedgehogs!
sudo apt-get install minetest # Multiplayer infinite-world block sandbox
sudo apt-get install nexuiz # Fast-paced 3D first-person shooter
    # dependency: darkplaces # Game engine for Quake and similar 3D first person shooter games
sudo apt-get install pingus # Free Lemmings(TM) clone
#sudo apt-get install pioneers # Settlers of Catan board game
sudo apt-get install redeclipse # free, casual arena shooter
#sudo apt-get install singularity # game where one becomes the singularity
sudo apt-get install supertux # Classic 2D jump 'n run sidescroller with Tux
sudo apt-get install supertuxkart # 3D arcade racer with a variety of characters, tracks, and modes to play

# Unvanquished --> see Flatpak

# GNOME games
#sudo apt-get install five-or-more # make color lines of five or more length
#sudo apt-get install four-in-a-row # Four in a Row game for GNOME
#sudo apt-get install gnome-2048 # sliding tile puzzle game
#sudo apt-get install gnome-klotski # Klotski puzzle game for GNOME
sudo apt-get install gnome-mines # popular minesweeper puzzle game for GNOME
#sudo apt-get install gnome-nibbles # snake game, up to four players
#sudo apt-get install gnome-robots # improved old BSD robots game
#sudo apt-get install gnome-taquin # game to move tiles so that they reach their places
#sudo apt-get install gnome-tetravex # put tiles on a board and match their edges together
#sudo apt-get install hitori # logic puzzle game similar to sudoku
#sudo apt-get install iagno # logic puzzle game similar to sudoku
#sudo apt-get install lightsoff # Light puzzle game
#sudo apt-get install quadrapassel # popular Russian game, similar to Tetris
#sudo apt-get install swell-foop # Colored ball puzzle game
#sudo apt-get install tali # sort of poker with dice and less money

# ------------------------------------ #
# games-free-table:

sudo apt-get install chessx # chess database
sudo apt-get install cgoban # complete Go board
    # for connecting to KGS
sudo apt-get install gnugo # play the game of Go
sudo apt-get install quarry # Board games Go, Amazons, and Reversi (a.k.a. Othello)

# GNOME games
sudo apt-get install aisleriot # GNOME solitaire card game collection
#sudo apt-get install gnome-chess # simple chess game
sudo apt-get install gnome-mahjongg # classic Eastern tile game for GNOME
sudo apt-get install gnome-sudoku # Sudoku puzzle game for GNOME

# ------------------------------------ #
# terminal:

sudo apt-get install foot # Fast, lightweight and minimalistic Wayland terminal emulator
sudo apt-get install kitty # fast, featureful, GPU based terminal emulator
sudo apt-get install xterm # X terminal emulator
    # includes: UXterm

sudo apt-get install gnome-terminal # GNOME terminal emulator application

# shells
sudo apt-get install fish # friendly interactive shell

# apps
sudo apt-get install ranger # Console File Manager with VI Key Bindings

# stats
sudo apt-get install btop # Modern and colorful command line resource monitor that shows usage and stats
sudo apt-get install htop # interactive processes viewer

# ---------------------------------------------------------------------------- #
# other:

# ------------------------------------ #
# terminal:

sudo apt-get install screen # terminal multiplexer with VT100/ANSI terminal emulation

sudo apt-get install zsh # shell with lots of features
sudo apt-get install zsh-doc # zsh documentation - info/HTML format
sudo apt-get install zsh-autosuggestions # Fish-like fast/unobtrusive autosuggestions for zsh
sudo apt-get install zsh-syntax-highlighting # Fish shell like syntax highlighting for zsh

# ------------------------------------ #
# IRC:

sudo apt-get install irssi # terminal based IRC client

# ------------------------------------ #
# RSS reader:

#sudo apt-get install quiterss # RSS/Atom news feeds reader
sudo apt-get install newsboat # text mode rss feed reader with podcast support

# ------------------------------------ #
# misc.:

sudo apt-get install feh # imlib2 based image viewer

# ---------------------------------------------------------------------------- #
