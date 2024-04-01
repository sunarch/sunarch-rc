# ---------------------------------------------------------------------------- #
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# ---------------------------------------------------------------------------- #
# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

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
# include: alias definitions - C compiler

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
