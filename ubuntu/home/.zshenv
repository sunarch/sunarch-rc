# ---------------------------------------------------------------------------- #
# ~/.zshenv : always sourced

# ---------------------------------------------------------------------------- #
# include: alias definitions

if [ -f ~/.shell-aliases ]; then
    . ~/.shell-aliases
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