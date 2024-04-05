# ---------------------------------------------------------------------------- #
# includes for shell: aliases - navigation

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
# wallpapers / backgrounds

alias nav-wallpapers-global='cd /usr/share/wallpapers'

# these are the preferred ones for Ubuntu:
alias nav-backgrounds-global='cd /usr/share/backgrounds'
alias nav-backgrounds-local="cd $HOME/.local/share/backgrounds"

# ---------------------------------------------------------------------------- #
