# ---------------------------------------------------------------------------- #
# includes for shell: aliases

# ---------------------------------------------------------------------------- #

alias i3k="feh $HOME/Pictures/i3/i3-keyboard.png"

alias what-is-my-ip='curl ifconfig.me'

# ---------------------------------------------------------------------------- #
# Git

alias commit-count='git log --oneline | wc -l'

# ---------------------------------------------------------------------------- #
# ls

alias l='ls -bF -C'
alias la='ls -AbF -C'

alias ll='ls -abF -lh'

# inode indexes
alias lsi='ls -AbF -C -i'
alias lli='ls -AbF -lh -i'

# sorted by size and allocated size
alias lss='ls -AbF -C -s -S'
alias lls='ls -AbF -lh -s -S'

# sorted by time
alias lst='ls -AbF -C -t'
alias llt='ls -AbF -lh -t'

# sorted by extension
alias lsx='ls -AbF -C -X'
alias llx='ls -AbF -lh -X'

# ---------------------------------------------------------------------------- #
# search

alias search-content='grep -Rin ./ -e'
alias search-content-word='grep -Rinw ./ -e'

# ---------------------------------------------------------------------------- #
# sourcing tools

alias emsdk-env='source ~/Documents/git-ref/github/emscripten-core/emsdk/emsdk_env.sh'

# ---------------------------------------------------------------------------- #
