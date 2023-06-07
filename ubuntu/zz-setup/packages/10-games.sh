#!/usr/bin/env bash

sudo apt-get update

# ---------------------------------------------------------------------------- #
# games - proprietary:

# Fantasy Grounds
# Steam
# WorldPainter

# GDLauncher -> see AppImage
# Minecraft Launcher --> see local DEB
# Worldographer -> see local DEB

# ---------------------------------------------------------------------------- #
# games - free:

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

# ---------------------------------------------------------------------------- #
# games - free - table:

sudo apt-get install chessx # chess database
sudo apt-get install cgoban # complete Go board
    # for connecting to KGS
sudo apt-get install gnugo # play the game of Go
sudo apt-get install quarry # Board games Go, Amazons, and Reversi (a.k.a. Othello)

# ---------------------------------------------------------------------------- #
# games - free - GNOME:

# GNOME games - metapackage:
sudo apt-get remove gnome-games # games for the GNOME desktop

sudo apt-get install aisleriot # GNOME solitaire card game collection
sudo apt-get install gnome-mahjongg # classic Eastern tile game for GNOME
sudo apt-get install gnome-mines # popular minesweeper puzzle game for GNOME
sudo apt-get install gnome-sudoku # Sudoku puzzle game for GNOME

sudo apt-get remove five-or-more # make color lines of five or more length
sudo apt-get remove four-in-a-row # Four in a Row game for GNOME
sudo apt-get remove gnome-2048 # sliding tile puzzle game
sudo apt-get remove gnome-chess # simple chess game
sudo apt-get remove gnome-klotski # Klotski puzzle game for GNOME
sudo apt-get remove gnome-nibbles # snake game, up to four players
sudo apt-get remove gnome-robots # improved old BSD robots game
sudo apt-get remove gnome-taquin # game to move tiles so that they reach their places
sudo apt-get remove gnome-tetravex # put tiles on a board and match their edges together
sudo apt-get remove hitori # logic puzzle game similar to sudoku
sudo apt-get remove iagno # logic puzzle game similar to sudoku
sudo apt-get remove lightsoff # Light puzzle game
sudo apt-get remove quadrapassel # popular Russian game, similar to Tetris
sudo apt-get remove swell-foop # Colored ball puzzle game
sudo apt-get remove tali # sort of poker with dice and less money

# ---------------------------------------------------------------------------- #
