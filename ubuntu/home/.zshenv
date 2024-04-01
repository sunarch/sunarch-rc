# ---------------------------------------------------------------------------- #
# ~/.zshenv : always sourced

# ---------------------------------------------------------------------------- #
# include: path

if [ -f ~/.shell-path ]; then
    . ~/.shell-path
fi

# ---------------------------------------------------------------------------- #
# include: alias definitions

if [ -f ~/.shell-aliases ]; then
    . ~/.shell-aliases
fi

# ---------------------------------------------------------------------------- #
# include: alias definitions

if [ -f ~/.shell-aliases-cc ]; then
    . ~/.shell-aliases-cc
fi

# ---------------------------------------------------------------------------- #
# include: program-related

if [ -f ~/.shell-programs ]; then
    . ~/.shell-programs
fi

# ---------------------------------------------------------------------------- #
# include: launchers

if [ -f ~/.shell-launchers ]; then
    . ~/.shell-launchers
fi

# ---------------------------------------------------------------------------- #
