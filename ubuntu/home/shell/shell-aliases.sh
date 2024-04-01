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
# search

alias search-content='grep -Rin ./ -e'
alias search-content-word='grep -Rinw ./ -e'

# ---------------------------------------------------------------------------- #
# sourcing tools

alias emsdk-env='source ~/Documents/git-ref/github/emscripten-core/emsdk/emsdk_env.sh'

# ---------------------------------------------------------------------------- #
