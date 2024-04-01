# ---------------------------------------------------------------------------- #
# includes for shell: programs

# depends on $HOME/shell/shell-path.sh

# ---------------------------------------------------------------------------- #
# Cargo (Rust)

. "$HOME/.cargo/env"

# ---------------------------------------------------------------------------- #
# Thunderchez library (Chez Scheme)

export CHEZSCHEMELIBDIRS="$HOME/Documents/programlibs/thunderchez"

# ---------------------------------------------------------------------------- #
# JetBrains Toolbox App

shell-path-include "$HOME/.local/share/JetBrains/Toolbox/scripts"

# ---------------------------------------------------------------------------- #
# Nim

shell-path-include "$HOME/Documents/programfiles/nim/nim-2-0-2/bin"
shell-path-include "$HOME/.nimble/bin"

# ---------------------------------------------------------------------------- #
# NodeJS

#export PATH="$PATH:$HOME/bin/nodejs"

# ---------------------------------------------------------------------------- #
# opam (OCaml's package manager)

case $PATH in
    */.opam/*) ;; # do nothing, it's there
    *) source /home/anemeth/.opam/opam-init/init.sh  > /dev/null 2> /dev/null
esac


# ---------------------------------------------------------------------------- #
# Poetry

shell-path-include "$HOME/.poetry/bin"

# ---------------------------------------------------------------------------- #
# PyEnv (https://github.com/pyenv/pyenv)

export PYENV_ROOT="$HOME/.pyenv"
shell-path-include "$PYENV_ROOT/bin"

eval "$(pyenv init --path)"

# ---------------------------------------------------------------------------- #
