# ---------------------------------------------------------------------------- #
# includes for shell: aliases

# ---------------------------------------------------------------------------- #

alias i3k="feh $HOME/Pictures/i3/i3-keyboard.png"

alias what-is-my-ip='curl -sS ifconfig.me | xargs echo'

# ---------------------------------------------------------------------------- #
# Git

alias commit-count='git log --oneline | wc -l'

# ---------------------------------------------------------------------------- #
# ls

alias ls-all='ls -bF -C -a'
alias ls-all-list='ls -bF -lh -a'

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
# navigation - XDG user directories

# user-specific configurations - analogous to /etc
alias nav-xdg-config="cd $HOME/.config"
 # user-specific non-essential (cached) data - analogous to /var/cache
alias nav-xdg-cache="cd $HOME/.cache"
# user-specific data files - analogous to /usr/share
alias nav-xdg-data="cd $HOME/.local/share"
# user-specific state files - analogous to /var/lib
alias nav-xdg-state="cd $HOME/.local/state"

# ---------------------------------------------------------------------------- #
# navigation - desktop files & icons

## desktop files
alias nav-desktop-files-global='cd /usr/share/applications'
alias nav-desktop-files-local="cd $HOME/.local/share/applications"

# desktop icons
alias nav-desktop-icons-global='cd /usr/share/icons'
alias nav-desktop-icons-local="cd $HOME/.local/share/icons"

# ---------------------------------------------------------------------------- #
# search

alias search-content='grep -Rin ./ -e'
alias search-content-word='grep -Rinw ./ -e'

# ---------------------------------------------------------------------------- #
