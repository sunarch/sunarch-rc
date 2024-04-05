#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

sudo apt-get update

# ---------------------------------------------------------------------------- #
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

# ------------------------------------ #
# non-graphical - remove:

sudo apt-get remove aspell
sudo apt-get remove aspell-en

# ------------------------------------ #
# non-graphical:

sudo apt-get install libreoffice-help-en-us # office productivity suite -- English_american help
sudo apt-get install libreoffice-help-hu # office productivity suite -- Hungarian help

sudo apt-get install hunspell # spell checker and morphological analyzer (program)

# ------------------------------------ #
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

# ---------------------------------------------------------------------------- #
