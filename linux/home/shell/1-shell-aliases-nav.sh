# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# ---------------------------------------------------------------------------- #
# includes for shell: aliases - navigation - common

# ---------------------------------------------------------------------------- #
# XDG user directories

# user-specific configurations - analogous to /etc
alias nav-xdg-config="cd $HOME/.config"
 # user-specific non-essential (cached) data - analogous to /var/cache
alias nav-xdg-cache="cd $HOME/.cache"
# user-specific data files - analogous to /usr/share
alias nav-xdg-data="cd $HOME/.local/share"
# user-specific state files - analogous to /var/lib
alias nav-xdg-state="cd $HOME/.local/state"

# ---------------------------------------------------------------------------- #
# desktop files & icons

## desktop files
alias nav-desktop-files-global='cd /usr/share/applications'
alias nav-desktop-files-local="cd $HOME/.local/share/applications"

# desktop icons
alias nav-desktop-icons-global='cd /usr/share/icons'
alias nav-desktop-icons-local="cd $HOME/.local/share/icons"

# ---------------------------------------------------------------------------- #
