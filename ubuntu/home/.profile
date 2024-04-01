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

if [ -f "$HOME/shell/shell-path.sh" ]; then
    . "$HOME/shell/shell-path.sh"
fi

# ---------------------------------------------------------------------------- #
# include: alias definitions

if [ -f "$HOME/shell/shell-aliases.sh" ]; then
    . "$HOME/shell/shell-aliases.sh"
fi

# ---------------------------------------------------------------------------- #
# include: alias definitions - C compiler

if [ -f "$HOME/shell/shell-aliases-cc.sh" ]; then
    . "$HOME/shell/shell-aliases-cc.sh"
fi

# ---------------------------------------------------------------------------- #
# include: program-related
# depends on $HOME/shell/shell-path.sh

if [ -f "$HOME/shell/shell-programs.sh" ]; then
    . "$HOME/shell/shell-programs.sh"
fi

# ---------------------------------------------------------------------------- #
# include: launchers

if [ -f "$HOME/shell/shell-launchers.sh" ]; then
    . "$HOME/shell/shell-launchers.sh"
fi

# ---------------------------------------------------------------------------- #
