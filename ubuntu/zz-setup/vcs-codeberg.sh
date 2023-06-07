#!/usr/bin/env bash

# ---------------------------------------------------------------------------- #
# Codeberg

mkdir ~/Documents/codeberg

# ---------------------------------------------------------------------------- #

mkdir ~/Documents/codeberg/freedom-to-write
cd ~/Documents/codeberg/freedom-to-write

git clone https://codeberg.org/Freedom-to-Write/prompts.git
git clone https://codeberg.org/Freedom-to-Write/readable.css.git
git clone https://codeberg.org/Freedom-to-Write/readable-css.freedomtowrite.org.git

# ---------------------------------------------------------------------------- #

mkdir ~/Documents/codeberg/sunarch

# ------------------------------------ #

mkdir ~/Documents/codeberg/sunarch-rust

cd ~/Documents/codeberg/sunarch-rust
git clone https://codeberg.org/sunarch/found-terminal.git
cd ~/Documents/codeberg/sunarch-rust/found-terminal
git remote add gitlab https://gitlab.com/sunarch/m_cb_found-terminal.git
git remote add github https://github.com/sunarch/m_cb_found-terminal.git

cd ~/Documents/codeberg/sunarch-rust
git clone https://codeberg.org/sunarch/libferroxid.git
cd ~/Documents/codeberg/sunarch-rust/libferroxid
git remote add gitlab https://gitlab.com/sunarch/m_cb_libferroxid.git
git remote add github https://github.com/sunarch/m_cb_libferroxid.git

cd ~/Documents/codeberg/sunarch-rust
git clone https://codeberg.org/sunarch/libferroxid-artnet.git
cd ~/Documents/codeberg/sunarch-rust/libferroxid-artnet
git remote add gitlab https://gitlab.com/sunarch/m_cb_libferroxid-artnet.git
git remote add github https://github.com/sunarch/m_cb_libferroxid-artnet.git

# ------------------------------------ #

mkdir ~/Documents/codeberg/sunarch-web
cd ~/Documents/codeberg/sunarch-web

cd ~/Documents/codeberg/sunarch-web
git clone https://codeberg.org/sunarch/f_bh_benjaminhollon-com.git
cd ~/Documents/codeberg/sunarch-web/f_bh_benjaminhollon-com
git remote add upstream https://codeberg.org/benjaminhollon/benjaminhollon.com.git

cd ~/Documents/codeberg/sunarch-web
git clone https://codeberg.org/sunarch/f_bh_see-with-eyes-closed.git
cd ~/Documents/codeberg/sunarch-web/f_bh_see-with-eyes-closed
git remote add upstream https://codeberg.org/benjaminhollon/see-with-eyes-closed.git

cd ~/Documents/codeberg/sunarch-web
mkdir ~/Documents/codeberg/sunarch-web/pages
cd ~/Documents/codeberg/sunarch-web/pages
git clone https://codeberg.org/sunarch/pages.git main
cd ~/Documents/codeberg/sunarch-web/pages/main
git remote add gitlab https://gitlab.com/sunarch/m_cb_pages.git
git remote add github https://github.com/sunarch/m_cb_pages.git
git worktree add -b pages ../pages
git worktree lock --reason "Continuously used" ../pages

# ---------------------------------------------------------------------------- #
