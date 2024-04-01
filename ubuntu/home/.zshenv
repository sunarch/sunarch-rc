# ---------------------------------------------------------------------------- #
# ~/.zshenv : always sourced

# ---------------------------------------------------------------------------- #
# include: path

if [ -f ~/.shell-path.sh ]; then
    . ~/.shell-path.sh
fi

# ---------------------------------------------------------------------------- #
# include: alias definitions

if [ -f ~/.shell-aliases.sh ]; then
    . ~/.shell-aliases.sh
fi

# ---------------------------------------------------------------------------- #
# include: alias definitions

if [ -f ~/.shell-aliases-cc.sh ]; then
    . ~/.shell-aliases-cc.sh
fi

# ---------------------------------------------------------------------------- #
# include: program-related

if [ -f ~/.shell-programs.sh ]; then
    . ~/.shell-programs.sh
fi

# ---------------------------------------------------------------------------- #
# include: launchers

if [ -f ~/.shell-launchers.sh ]; then
    . ~/.shell-launchers.sh
fi

# ---------------------------------------------------------------------------- #
