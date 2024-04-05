# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# ---------------------------------------------------------------------------- #
# includes for shell: aliases

# ---------------------------------------------------------------------------- #

alias i3k="feh $HOME/Pictures/i3/i3-keyboard.png"

# ---------------------------------------------------------------------------- #
# Git

alias commit-count='git log --oneline | wc -l'

# ---------------------------------------------------------------------------- #
# ls

alias l='ls -bF -lh'
alias ll='ls -bF -lh -A'

alias ls-all='ls -bF -C -a'
alias ls-all-list='ls -bF -lh -a'
alias la='ls -bF -lh -a'

# inode indexes
alias ls-inode='ls -bF -C -Ai'
alias ls-inode-list='ls -bF -lh -Ai'

# sorted by size and allocated size
alias ls-size='ls -bF -C -AsS'
alias ls-size-list='ls -bF -lh -AsS'

# sorted by time
alias ls-time='ls -bF -C -At'
alias ls-time-list='ls -bF -lh -At'

# sorted by extension
alias ls-ext='ls -bF -C -AX'
alias ls-ext-list='ls -bF -lh -AX'

# ---------------------------------------------------------------------------- #
# search

alias search-content='grep -Rin ./ -e'
alias search-content-word='grep -Rinw ./ -e'

# ---------------------------------------------------------------------------- #
